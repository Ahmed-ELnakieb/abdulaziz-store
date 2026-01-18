<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Language\Models\Language;

class LanguageArabicSeeder extends BaseSeeder
{
    public function run(): void
    {
        // Check if Arabic language already exists
        $arabic = Language::query()->where('lang_locale', 'ar')->first();

        if (! $arabic) {
            Language::query()->create([
                'lang_name' => 'العربية',
                'lang_locale' => 'ar',
                'lang_is_default' => false,
                'lang_code' => 'ar',
                'lang_is_rtl' => true,
                'lang_flag' => 'eg',
                'lang_order' => 1,
            ]);

            $this->command->info('Arabic language added successfully!');
        } else {
            $this->command->info('Arabic language already exists.');
        }
    }
}
