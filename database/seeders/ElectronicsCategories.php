<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ElectronicsCategories extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Updating categories to Electronics & Home Appliances...');

        // Delete existing categories and their translations
        DB::table('ec_product_categories_translations')->truncate();
        DB::table('ec_product_categories')->truncate();
        
        $categories = [
            // Main Categories
            [
                'name' => 'Electronics',
                'name_ar' => 'إلكترونيات',
                'parent_id' => 0,
                'icon' => 'icon-cpu',
                'is_featured' => true,
            ],
            [
                'name' => 'Home Appliances',
                'name_ar' => 'أجهزة منزلية',
                'parent_id' => 0,
                'icon' => 'icon-home',
                'is_featured' => true,
            ],
            [
                'name' => 'Kitchen Appliances',
                'name_ar' => 'أجهزة مطبخ',
                'parent_id' => 0,
                'icon' => 'icon-coffee',
                'is_featured' => true,
            ],
            
            // Electronics Subcategories
            [
                'name' => 'Televisions',
                'name_ar' => 'تليفزيونات',
                'parent_id' => 1, // Electronics
                'icon' => 'icon-tv',
                'is_featured' => true,
            ],
            [
                'name' => 'Screens & Monitors',
                'name_ar' => 'شاشات',
                'parent_id' => 1, // Electronics
                'icon' => 'icon-monitor',
                'is_featured' => false,
            ],
            [
                'name' => 'Audio & Sound Systems',
                'name_ar' => 'أنظمة صوتية',
                'parent_id' => 1, // Electronics
                'icon' => 'icon-volume-2',
                'is_featured' => false,
            ],
            
            // Home Appliances Subcategories
            [
                'name' => 'Refrigerators',
                'name_ar' => 'ثلاجات',
                'parent_id' => 2, // Home Appliances
                'icon' => 'icon-archive',
                'is_featured' => true,
            ],
            [
                'name' => 'Washing Machines',
                'name_ar' => 'غسالات ملابس',
                'parent_id' => 2, // Home Appliances
                'icon' => 'icon-disc',
                'is_featured' => true,
            ],
            [
                'name' => 'Dishwashers',
                'name_ar' => 'غسالات أطباق',
                'parent_id' => 2, // Home Appliances
                'icon' => 'icon-droplet',
                'is_featured' => false,
            ],
            [
                'name' => 'Air Conditioners',
                'name_ar' => 'تكيفات و مبرد هواء',
                'parent_id' => 2, // Home Appliances
                'icon' => 'icon-wind',
                'is_featured' => true,
            ],
            [
                'name' => 'Water Heaters',
                'name_ar' => 'سخانات مياة',
                'parent_id' => 2, // Home Appliances
                'icon' => 'icon-thermometer',
                'is_featured' => false,
            ],
            [
                'name' => 'Water Coolers',
                'name_ar' => 'مبردات مياة',
                'parent_id' => 2, // Home Appliances
                'icon' => 'icon-droplet',
                'is_featured' => false,
            ],
            
            // Kitchen Appliances Subcategories
            [
                'name' => 'Gas Stoves & Ovens',
                'name_ar' => 'بوتاجازات و أفران',
                'parent_id' => 3, // Kitchen Appliances
                'icon' => 'icon-zap',
                'is_featured' => true,
            ],
            [
                'name' => 'Built-in Appliances',
                'name_ar' => 'أجهزه بلت أن',
                'parent_id' => 3, // Kitchen Appliances
                'icon' => 'icon-grid',
                'is_featured' => false,
            ],
            [
                'name' => 'Microwaves',
                'name_ar' => 'ميكروويف',
                'parent_id' => 3, // Kitchen Appliances
                'icon' => 'icon-box',
                'is_featured' => false,
            ],
            [
                'name' => 'Small Kitchen Appliances',
                'name_ar' => 'أجهزة مطبخ صغيرة',
                'parent_id' => 3, // Kitchen Appliances
                'icon' => 'icon-coffee',
                'is_featured' => false,
            ],
        ];

        $createdCategories = [];
        
        foreach ($categories as $index => $category) {
            $categoryData = [
                'name' => $category['name'],
                'parent_id' => $category['parent_id'],
                'description' => $category['name'],
                'status' => 'published',
                'order' => $index,
                'is_featured' => $category['is_featured'],
                'icon' => $category['icon'] ?? null,
            ];

            $productCategory = ProductCategory::query()->create($categoryData);
            $createdCategories[$index + 1] = $productCategory->id;

            // Create slug for English
            SlugHelper::createSlug($productCategory, $category['name']);

            // Create Arabic translation
            DB::table('ec_product_categories_translations')->insert([
                'lang_code' => 'ar',
                'ec_product_categories_id' => $productCategory->id,
                'name' => $category['name_ar'],
                'description' => $category['name_ar'],
            ]);

            // Create Arabic slug
            $arabicSlug = Str::slug($category['name_ar']);
            DB::table('slugs')->insert([
                'key' => Str::slug($category['name_ar']),
                'reference_type' => ProductCategory::class,
                'reference_id' => $productCategory->id,
                'prefix' => 'product-categories',
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $this->command->info("Created: {$category['name']} / {$category['name_ar']}");
        }

        $this->command->info('Electronics & Home Appliances categories created successfully!');
    }
}
