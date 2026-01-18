<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class AddSlugsToTranslationsSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Adding slugs to category translations...');

        $categories = [
            1 => 'إلكترونيات',
            2 => 'أجهزة منزلية',
            3 => 'أجهزة مطبخ',
            4 => 'تليفزيونات',
            5 => 'ثلاجات',
            6 => 'غسالات ملابس',
            7 => 'تكيفات و مبرد هواء',
            8 => 'بوتاجازات و أفران',
            9 => 'شاشات',
            10 => 'غسالات أطباق',
            11 => 'سخانات مياة',
            12 => 'أجهزه بلت أن',
            13 => 'ميكروويف',
            14 => 'مبردات مياة',
        ];

        foreach ($categories as $categoryId => $arabicName) {
            $slug = Str::slug($arabicName);
            
            DB::table('ec_product_categories_translations')
                ->where('ec_product_categories_id', $categoryId)
                ->where('lang_code', 'ar')
                ->update(['slug' => $slug]);
            
            $this->command->info("✓ Added slug '{$slug}' for category {$categoryId}");
        }

        $this->command->info('');
        $this->command->info('✅ All translation slugs added!');
    }
}
