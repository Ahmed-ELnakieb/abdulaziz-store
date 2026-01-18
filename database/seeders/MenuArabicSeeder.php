<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class MenuArabicSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Updating Arabic menu translations...');

        // First, fix the parent_id relationships for Arabic menu (menu_id = 6)
        // The parent_id should reference Arabic menu nodes, not English ones
        
        // Home submenu items (parent should be 52, not 1)
        DB::table('menu_nodes')->whereIn('id', [53, 54, 55, 56, 57, 58])->update(['parent_id' => 52]);
        
        // Shop submenu items (parent should be 59, not 8)
        DB::table('menu_nodes')->whereIn('id', [60, 61, 62, 63])->update(['parent_id' => 59]);
        
        // Stores submenu items (parent should be 64, not 13)
        DB::table('menu_nodes')->whereIn('id', [65, 66, 67])->update(['parent_id' => 64]);
        
        // Product submenu items (parent should be 68, not 17)
        DB::table('menu_nodes')->whereIn('id', [69, 70, 71])->update(['parent_id' => 68]);
        
        // Blog submenu items (parent should be 72, not 21)
        DB::table('menu_nodes')->whereIn('id', [73, 74, 75, 76, 77])->update(['parent_id' => 72]);
        
        // Single Post submenu items (parent should be 77, not 26)
        DB::table('menu_nodes')->whereIn('id', [78, 79, 80, 81])->update(['parent_id' => 77]);

        // Main Menu (menu_id = 6) - Arabic translations
        $mainMenuTranslations = [
            52 => 'الرئيسية',  // Home
            59 => 'المتجر',     // Shop
            64 => 'المتاجر',    // Stores
            68 => 'المنتج',     // Product
            72 => 'المدونة',    // Blog
            82 => 'الأسئلة الشائعة',  // FAQ
            83 => 'اتصل بنا',   // Contact
        ];

        foreach ($mainMenuTranslations as $nodeId => $title) {
            DB::table('menu_nodes')->where('id', $nodeId)->update(['title' => $title]);
        }

        // Sub-menu items for Main Menu
        $subMenuTranslations = [
            53 => 'الرئيسية 1',  // Home 1
            54 => 'الرئيسية 2',  // Home 2
            55 => 'الرئيسية 3',  // Home 3
            56 => 'الرئيسية 4',  // Home 4
            57 => 'الرئيسية 5',  // Home 5
            58 => 'الرئيسية 6',  // Home 6
            60 => 'شبكة المتجر - عرض كامل',  // Shop Grid - Full Width
            61 => 'شبكة المتجر - شريط جانبي أيمن',  // Shop Grid - Right Sidebar
            62 => 'شبكة المتجر - شريط جانبي أيسر',  // Shop Grid - Left Sidebar
            63 => 'منتجات الفئة',  // Products Of Category
            65 => 'المتاجر - شبكة',  // Stores - Grid
            66 => 'المتاجر - قائمة',  // Stores - List
            67 => 'تفاصيل المتجر',  // Store - Detail
            69 => 'منتج - شريط جانبي أيمن',  // Product Right Sidebar
            70 => 'منتج - شريط جانبي أيسر',  // Product Left Sidebar
            71 => 'منتج - عرض كامل',  // Product Full Width
            73 => 'شبكة المدونة',  // Blog Grid
            74 => 'قائمة المدونة',  // Blog List
            75 => 'المدونة الكبيرة',  // Blog Big
            76 => 'المدونة العريضة',  // Blog Wide
            77 => 'مقال واحد',  // Single Post
            78 => 'مقال - شريط جانبي أيمن',  // Single Post Right Sidebar
            79 => 'مقال - شريط جانبي أيسر',  // Single Post Left Sidebar
            80 => 'مقال - عرض كامل',  // Single Post Full Width
            81 => 'مقال مع قائمة المنتجات',  // Single Post with Product Listing
        ];

        foreach ($subMenuTranslations as $nodeId => $title) {
            DB::table('menu_nodes')->where('id', $nodeId)->update(['title' => $title]);
        }

        // Header Menu (menu_id = 7) - Arabic translations
        $headerMenuTranslations = [
            84 => 'من نحن',  // About Us
            85 => 'تتبع الطلب',  // Order Tracking
        ];

        foreach ($headerMenuTranslations as $nodeId => $title) {
            DB::table('menu_nodes')->where('id', $nodeId)->update(['title' => $title]);
        }

        // Product Categories Menu (menu_id = 8) - Arabic translations
        $productCategoriesTranslations = [
            86 => 'إلكترونيات',  // Electronics
            87 => 'أجهزة منزلية',  // Home Appliances
            88 => 'أجهزة مطبخ',  // Kitchen Appliances
            89 => 'تليفزيونات',  // Televisions
            90 => 'ثلاجات',  // Refrigerators
            91 => 'غسالات ملابس',  // Washing Machines
            92 => 'تكيفات و مبرد هواء',  // Air Conditioners
            93 => 'بوتاجازات و أفران',  // Gas Stoves & Ovens
            94 => 'شاشات',  // Screens & Monitors
            95 => 'غسالات أطباق',  // Dishwashers
            96 => 'سخانات مياة',  // Water Heaters
            97 => 'أجهزه بلت أن',  // Built-in Appliances
            98 => 'ميكروويف',  // Microwaves
            99 => 'مبردات مياة',  // Water Coolers
        ];

        foreach ($productCategoriesTranslations as $nodeId => $title) {
            DB::table('menu_nodes')->where('id', $nodeId)->update(['title' => $title]);
        }

        // Information Menu (menu_id = 9) - Arabic translations
        $informationMenuTranslations = [
            100 => 'اتصل بنا',  // Contact Us (adjusted ID)
            101 => 'من نحن',  // About Us
            94 => 'سياسة ملفات تعريف الارتباط',  // Cookie Policy
            95 => 'الشروط والأحكام',  // Terms & Conditions
            96 => 'الإرجاع والاستبدال',  // Returns & Exchanges
            97 => 'الشحن والتوصيل',  // Shipping & Delivery
            98 => 'سياسة الخصوصية',  // Privacy Policy
        ];

        foreach ($informationMenuTranslations as $nodeId => $title) {
            DB::table('menu_nodes')->where('id', $nodeId)->update(['title' => $title]);
        }

        // Company Menu (menu_id = 10) - Arabic translations
        $companyMenuTranslations = [
            99 => 'من نحن',  // About us
            100 => 'الشراكة',  // Affiliate
            101 => 'الوظائف',  // Career
            102 => 'اتصل بنا',  // Contact us
        ];

        foreach ($companyMenuTranslations as $nodeId => $title) {
            DB::table('menu_nodes')->where('id', $nodeId)->update(['title' => $title]);
        }

        $this->command->info('Arabic menu translations updated successfully!');
    }
}
