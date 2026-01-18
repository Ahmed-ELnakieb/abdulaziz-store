<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Menu\Models\Menu;
use Illuminate\Support\Facades\DB;

class MenuArabicTranslationSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Creating/Updating Arabic menus...');

        // Check if Arabic language exists
        $arabicLang = DB::table('languages')->where('lang_locale', 'ar')->first();
        
        if (!$arabicLang) {
            $this->command->error('Arabic language not found! Please run LanguageArabicSeeder first.');
            return;
        }

        // Get all English menus (menus without -ar suffix)
        $englishMenus = Menu::query()
            ->where('slug', 'not like', '%-ar')
            ->get();

        foreach ($englishMenus as $englishMenu) {
            // Check if Arabic version exists
            $arabicMenuSlug = $englishMenu->slug . '-ar';
            $arabicMenu = Menu::query()->where('slug', $arabicMenuSlug)->first();

            if (!$arabicMenu) {
                // Create Arabic menu
                $arabicMenu = Menu::query()->create([
                    'name' => $englishMenu->name,
                    'slug' => $arabicMenuSlug,
                ]);

                $this->command->info("Created Arabic menu: {$arabicMenu->name}");
            }

            // Create language meta for both English and Arabic menus
            $this->createLanguageMeta($englishMenu->id, 1, $englishMenu->id); // English (lang_id = 1)
            $this->createLanguageMeta($arabicMenu->id, $arabicLang->lang_id, $englishMenu->id); // Arabic

            // Copy menu location if exists
            $englishLocation = DB::table('menu_locations')->where('menu_id', $englishMenu->id)->first();
            if ($englishLocation) {
                $arabicLocation = DB::table('menu_locations')->where('menu_id', $arabicMenu->id)->first();
                if (!$arabicLocation) {
                    DB::table('menu_locations')->insert([
                        'menu_id' => $arabicMenu->id,
                        'location' => $englishLocation->location,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
                    
                    // Create language meta for menu location
                    $englishLocationId = $englishLocation->id;
                    $arabicLocationId = DB::table('menu_locations')->where('menu_id', $arabicMenu->id)->value('id');
                    
                    $this->createLanguageMeta($englishLocationId, 1, $englishLocationId, 'Botble\\Menu\\Models\\MenuLocation');
                    $this->createLanguageMeta($arabicLocationId, $arabicLang->lang_id, $englishLocationId, 'Botble\\Menu\\Models\\MenuLocation');
                }
            }

            // Copy menu nodes from English to Arabic
            $this->copyMenuNodes($englishMenu->id, $arabicMenu->id);
        }

        // Now translate the menu node titles
        $this->translateMenuNodes();

        $this->command->info('Arabic menus created/updated successfully!');
    }

    protected function createLanguageMeta(int $referenceId, int $langId, int $originId, string $referenceType = 'Botble\\Menu\\Models\\Menu'): void
    {
        // Check if meta already exists
        $exists = DB::table('language_meta')
            ->where('reference_id', $referenceId)
            ->where('reference_type', $referenceType)
            ->exists();

        if (!$exists) {
            DB::table('language_meta')->insert([
                'reference_id' => $referenceId,
                'reference_type' => $referenceType,
                'lang_meta_code' => 'ar',
                'lang_meta_origin' => (string)$originId,
            ]);
        }
    }

    protected function copyMenuNodes(int $sourceMenuId, int $targetMenuId): void
    {
        // Delete existing nodes in target menu
        DB::table('menu_nodes')->where('menu_id', $targetMenuId)->delete();

        // Get all nodes from source menu using raw DB query to avoid relationship issues
        $sourceNodes = DB::table('menu_nodes')
            ->where('menu_id', $sourceMenuId)
            ->orderBy('parent_id')
            ->orderBy('position')
            ->get();

        $nodeMapping = []; // Map old IDs to new IDs

        foreach ($sourceNodes as $sourceNode) {
            $newNodeId = DB::table('menu_nodes')->insertGetId([
                'menu_id' => $targetMenuId,
                'parent_id' => $sourceNode->parent_id == 0 ? 0 : ($nodeMapping[$sourceNode->parent_id] ?? 0),
                'reference_id' => $sourceNode->reference_id,
                'reference_type' => $sourceNode->reference_type,
                'url' => $sourceNode->url,
                'icon_font' => $sourceNode->icon_font,
                'title' => $sourceNode->title, // Will be translated later
                'css_class' => $sourceNode->css_class,
                'target' => $sourceNode->target,
                'has_child' => $sourceNode->has_child,
                'position' => $sourceNode->position,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $nodeMapping[$sourceNode->id] = $newNodeId;
        }
    }

    protected function translateMenuNodes(): void
    {
        // Translation mappings
        $translations = [
            // Common menu items
            'Home' => 'الرئيسية',
            'Shop' => 'المتجر',
            'Stores' => 'المتاجر',
            'Product' => 'المنتج',
            'Blog' => 'المدونة',
            'FAQ' => 'الأسئلة الشائعة',
            'Contact' => 'اتصل بنا',
            'About Us' => 'من نحن',
            'About us' => 'من نحن',
            
            // Home submenu
            'Home 1' => 'الرئيسية 1',
            'Home 2' => 'الرئيسية 2',
            'Home 3' => 'الرئيسية 3',
            'Home 4' => 'الرئيسية 4',
            'Home 5' => 'الرئيسية 5',
            'Home 6' => 'الرئيسية 6',
            
            // Shop submenu
            'Shop Grid - Full Width' => 'شبكة المتجر - عرض كامل',
            'Shop Grid - Right Sidebar' => 'شبكة المتجر - شريط جانبي أيمن',
            'Shop Grid - Left Sidebar' => 'شبكة المتجر - شريط جانبي أيسر',
            'Products Of Category' => 'منتجات الفئة',
            
            // Stores submenu
            'Stores - Grid' => 'المتاجر - شبكة',
            'Stores - List' => 'المتاجر - قائمة',
            'Store - Detail' => 'تفاصيل المتجر',
            
            // Product submenu
            'Product Right Sidebar' => 'منتج - شريط جانبي أيمن',
            'Product Left Sidebar' => 'منتج - شريط جانبي أيسر',
            'Product Full Width' => 'منتج - عرض كامل',
            
            // Blog submenu
            'Blog Grid' => 'شبكة المدونة',
            'Blog List' => 'قائمة المدونة',
            'Blog Big' => 'المدونة الكبيرة',
            'Blog Wide' => 'المدونة العريضة',
            'Single Post' => 'مقال واحد',
            'Single Post Right Sidebar' => 'مقال - شريط جانبي أيمن',
            'Single Post Left Sidebar' => 'مقال - شريط جانبي أيسر',
            'Single Post Full Width' => 'مقال - عرض كامل',
            'Single Post with Product Listing' => 'مقال مع قائمة المنتجات',
            
            // Header menu
            'Order Tracking' => 'تتبع الطلب',
            
            // Product categories (Electronics)
            'Electronics' => 'إلكترونيات',
            'Home Appliances' => 'أجهزة منزلية',
            'Kitchen Appliances' => 'أجهزة مطبخ',
            'Televisions' => 'تليفزيونات',
            'Refrigerators' => 'ثلاجات',
            'Washing Machines' => 'غسالات ملابس',
            'Air Conditioners' => 'تكيفات و مبرد هواء',
            'Gas Stoves & Ovens' => 'بوتاجازات و أفران',
            'Screens & Monitors' => 'شاشات',
            'Dishwashers' => 'غسالات أطباق',
            'Water Heaters' => 'سخانات مياة',
            'Built-in Appliances' => 'أجهزه بلت أن',
            'Microwaves' => 'ميكروويف',
            'Water Coolers' => 'مبردات مياة',
            
            // Information menu
            'Contact Us' => 'اتصل بنا',
            'Cookie Policy' => 'سياسة ملفات تعريف الارتباط',
            'Terms & Conditions' => 'الشروط والأحكام',
            'Returns & Exchanges' => 'الإرجاع والاستبدال',
            'Shipping & Delivery' => 'الشحن والتوصيل',
            'Privacy Policy' => 'سياسة الخصوصية',
            
            // Company menu
            'Affiliate' => 'الشراكة',
            'Career' => 'الوظائف',
        ];

        // Get all Arabic menus using raw DB query
        $arabicMenus = DB::table('menus')->where('slug', 'like', '%-ar')->get();

        foreach ($arabicMenus as $arabicMenu) {
            $nodes = DB::table('menu_nodes')->where('menu_id', $arabicMenu->id)->get();

            foreach ($nodes as $node) {
                if (isset($translations[$node->title])) {
                    DB::table('menu_nodes')
                        ->where('id', $node->id)
                        ->update(['title' => $translations[$node->title]]);
                }
            }
        }
    }
}
