<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;

class ConvertToElectronicsStoreSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Converting store from Grocery to Electronics & Home Appliances...');
        $this->command->info('⚠️  This will rename existing categories and keep all products');
        $this->command->info('');

        // Rename existing categories (keeps products)
        $this->call(RenameCategoriesSeeder::class);
        
        // Update menu items
        $this->call(UpdateMenuCategoriesSeeder::class);
        
        // Update settings
        $this->call(ElectronicsSettingsSeeder::class);

        $this->command->info('');
        $this->command->info('✅ Store converted successfully!');
        $this->command->info('');
        $this->command->info('Categories created:');
        $this->command->info('- إلكترونيات (Electronics)');
        $this->command->info('  - تليفزيونات (Televisions)');
        $this->command->info('  - شاشات (Screens & Monitors)');
        $this->command->info('  - أنظمة صوتية (Audio Systems)');
        $this->command->info('');
        $this->command->info('- أجهزة منزلية (Home Appliances)');
        $this->command->info('  - ثلاجات (Refrigerators)');
        $this->command->info('  - غسالات ملابس (Washing Machines)');
        $this->command->info('  - غسالات أطباق (Dishwashers)');
        $this->command->info('  - تكيفات و مبرد هواء (Air Conditioners)');
        $this->command->info('  - سخانات مياة (Water Heaters)');
        $this->command->info('  - مبردات مياة (Water Coolers)');
        $this->command->info('');
        $this->command->info('- أجهزة مطبخ (Kitchen Appliances)');
        $this->command->info('  - بوتاجازات و أفران (Gas Stoves & Ovens)');
        $this->command->info('  - أجهزه بلت أن (Built-in Appliances)');
        $this->command->info('  - ميكروويف (Microwaves)');
        $this->command->info('  - أجهزة مطبخ صغيرة (Small Kitchen Appliances)');
        $this->command->info('');
        $this->command->info('Next steps:');
        $this->command->info('1. Clear cache: php artisan cache:clear');
        $this->command->info('2. Update products to match new categories');
        $this->command->info('3. Update theme options and homepage content');
    }
}
