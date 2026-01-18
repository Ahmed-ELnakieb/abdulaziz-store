<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Models\Setting;

class ElectronicsSettingsSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Updating site settings for Electronics Store...');

        $settings = [
            'admin_title' => 'Abdulaziz Electronics Store',
            'admin_logo' => 'general/logo.png',
            'admin_favicon' => 'general/favicon.png',
            'site_title' => 'Abdulaziz - Electronics & Home Appliances Store',
            'seo_title' => 'Abdulaziz Electronics - Best Prices on Electronics & Home Appliances',
            'seo_description' => 'Shop the latest electronics, home appliances, TVs, refrigerators, washing machines, air conditioners and more at the best prices with Abdulaziz.',
            'homepage_id' => '1',
            'blog_page_id' => '2',
            'default_admin_theme' => 'default',
            'enable_cache' => '1',
            'cache_time' => '10',
            'enable_multi_language' => '1',
            'language_display' => 'all',
            'language_switcher_display' => 'dropdown',
            'language_hide_default' => '1',
            'language_auto_detect_user_language' => '1',
        ];

        foreach ($settings as $key => $value) {
            Setting::query()->where('key', $key)->update(['value' => $value]) 
                ?: Setting::query()->create(['key' => $key, 'value' => $value]);
        }

        $this->command->info('Settings updated successfully!');
    }
}
