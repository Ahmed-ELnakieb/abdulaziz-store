<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class FixCategorySlugsSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Fixing category slugs...');

        $categories = [
            1 => ['name' => 'Electronics', 'name_ar' => 'إلكترونيات'],
            2 => ['name' => 'Home Appliances', 'name_ar' => 'أجهزة منزلية'],
            3 => ['name' => 'Kitchen Appliances', 'name_ar' => 'أجهزة مطبخ'],
            4 => ['name' => 'Televisions', 'name_ar' => 'تليفزيونات'],
            5 => ['name' => 'Refrigerators', 'name_ar' => 'ثلاجات'],
            6 => ['name' => 'Washing Machines', 'name_ar' => 'غسالات ملابس'],
            7 => ['name' => 'Air Conditioners', 'name_ar' => 'تكيفات و مبرد هواء'],
            8 => ['name' => 'Gas Stoves & Ovens', 'name_ar' => 'بوتاجازات و أفران'],
            9 => ['name' => 'Screens & Monitors', 'name_ar' => 'شاشات'],
            10 => ['name' => 'Dishwashers', 'name_ar' => 'غسالات أطباق'],
            11 => ['name' => 'Water Heaters', 'name_ar' => 'سخانات مياة'],
            12 => ['name' => 'Built-in Appliances', 'name_ar' => 'أجهزه بلت أن'],
            13 => ['name' => 'Microwaves', 'name_ar' => 'ميكروويف'],
            14 => ['name' => 'Water Coolers', 'name_ar' => 'مبردات مياة'],
        ];

        foreach ($categories as $id => $data) {
            // Delete old slugs for this category
            DB::table('slugs')
                ->where('reference_type', ProductCategory::class)
                ->where('reference_id', $id)
                ->delete();

            // Create English slug (used for both languages)
            $englishSlug = Str::slug($data['name']);
            DB::table('slugs')->insert([
                'key' => $englishSlug,
                'reference_type' => ProductCategory::class,
                'reference_id' => $id,
                'prefix' => 'product-categories',
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $this->command->info("✓ Fixed slug for Category {$id}: {$englishSlug}");
        }

        $this->command->info('');
        $this->command->info('✅ All category slugs fixed!');
    }
}
