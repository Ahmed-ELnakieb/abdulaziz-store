<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class RenameCategoriesSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Renaming categories from Grocery to Electronics...');

        // Map old category IDs to new names
        $categoryMapping = [
            1 => [
                'name' => 'Electronics',
                'name_ar' => 'إلكترونيات',
                'icon' => 'icon-cpu',
            ],
            2 => [
                'name' => 'Home Appliances',
                'name_ar' => 'أجهزة منزلية',
                'icon' => 'icon-home',
            ],
            3 => [
                'name' => 'Kitchen Appliances',
                'name_ar' => 'أجهزة مطبخ',
                'icon' => 'icon-coffee',
            ],
            4 => [
                'name' => 'Televisions',
                'name_ar' => 'تليفزيونات',
                'icon' => 'icon-tv',
            ],
            5 => [
                'name' => 'Refrigerators',
                'name_ar' => 'ثلاجات',
                'icon' => 'icon-archive',
            ],
            6 => [
                'name' => 'Washing Machines',
                'name_ar' => 'غسالات ملابس',
                'icon' => 'icon-disc',
            ],
            7 => [
                'name' => 'Air Conditioners',
                'name_ar' => 'تكيفات و مبرد هواء',
                'icon' => 'icon-wind',
            ],
            8 => [
                'name' => 'Gas Stoves & Ovens',
                'name_ar' => 'بوتاجازات و أفران',
                'icon' => 'icon-zap',
            ],
            9 => [
                'name' => 'Screens & Monitors',
                'name_ar' => 'شاشات',
                'icon' => 'icon-monitor',
            ],
            10 => [
                'name' => 'Dishwashers',
                'name_ar' => 'غسالات أطباق',
                'icon' => 'icon-droplet',
            ],
            11 => [
                'name' => 'Water Heaters',
                'name_ar' => 'سخانات مياة',
                'icon' => 'icon-thermometer',
            ],
            12 => [
                'name' => 'Built-in Appliances',
                'name_ar' => 'أجهزه بلت أن',
                'icon' => 'icon-grid',
            ],
            13 => [
                'name' => 'Microwaves',
                'name_ar' => 'ميكروويف',
                'icon' => 'icon-box',
            ],
            14 => [
                'name' => 'Water Coolers',
                'name_ar' => 'مبردات مياة',
                'icon' => 'icon-droplet',
            ],
        ];

        foreach ($categoryMapping as $categoryId => $data) {
            // Check if category exists
            $category = ProductCategory::find($categoryId);
            
            if (!$category) {
                $this->command->warn("Category ID {$categoryId} not found, skipping...");
                continue;
            }

            // Update English name
            $category->update([
                'name' => $data['name'],
                'description' => $data['name'],
                'icon' => $data['icon'] ?? $category->icon,
            ]);

            // Update English slug
            DB::table('slugs')
                ->where('reference_type', ProductCategory::class)
                ->where('reference_id', $categoryId)
                ->where('key', 'NOT LIKE', '%-ar')
                ->update([
                    'key' => Str::slug($data['name']),
                    'updated_at' => now(),
                ]);

            // Update or create Arabic translation
            DB::table('ec_product_categories_translations')->updateOrInsert(
                [
                    'lang_code' => 'ar',
                    'ec_product_categories_id' => $categoryId,
                ],
                [
                    'name' => $data['name_ar'],
                    'description' => $data['name_ar'],
                ]
            );

            // Update or create Arabic slug
            $arabicSlug = Str::slug($data['name_ar']);
            DB::table('slugs')->updateOrInsert(
                [
                    'reference_type' => ProductCategory::class,
                    'reference_id' => $categoryId,
                    'key' => $arabicSlug,
                ],
                [
                    'prefix' => 'product-categories',
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            );

            $this->command->info("✓ Updated Category {$categoryId}: {$data['name']} / {$data['name_ar']}");
        }

        // Update parent categories to organize structure
        $parentMapping = [
            4 => 1,  // Televisions -> Electronics
            9 => 1,  // Screens -> Electronics
            5 => 2,  // Refrigerators -> Home Appliances
            6 => 2,  // Washing Machines -> Home Appliances
            7 => 2,  // Air Conditioners -> Home Appliances
            10 => 2, // Dishwashers -> Home Appliances
            11 => 2, // Water Heaters -> Home Appliances
            14 => 2, // Water Coolers -> Home Appliances
            8 => 3,  // Gas Stoves -> Kitchen Appliances
            12 => 3, // Built-in -> Kitchen Appliances
            13 => 3, // Microwaves -> Kitchen Appliances
        ];

        foreach ($parentMapping as $childId => $parentId) {
            DB::table('ec_product_categories')
                ->where('id', $childId)
                ->update(['parent_id' => $parentId]);
        }

        $this->command->info('');
        $this->command->info('✅ Categories renamed successfully!');
        $this->command->info('All products remain in their categories with new names.');
    }
}
