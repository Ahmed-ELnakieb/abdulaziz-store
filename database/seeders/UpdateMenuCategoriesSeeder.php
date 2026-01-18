<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class UpdateMenuCategoriesSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Updating menu category names...');

        // Update Product Categories Menu items (English)
        $menuUpdates = [
            35 => 'Electronics',
            36 => 'Home Appliances',
            37 => 'Kitchen Appliances',
            38 => 'Televisions',
            39 => 'Refrigerators',
            40 => 'Washing Machines',
            41 => 'Air Conditioners',
            42 => 'Gas Stoves & Ovens',
            43 => 'Screens & Monitors',
            44 => 'Dishwashers',
            45 => 'Water Heaters',
            46 => 'Built-in Appliances',
            47 => 'Microwaves',
            48 => 'Water Coolers',
        ];

        foreach ($menuUpdates as $nodeId => $title) {
            $updated = DB::table('menu_nodes')
                ->where('id', $nodeId)
                ->update(['title' => $title]);
            
            if ($updated) {
                $this->command->info("✓ Updated menu node {$nodeId}: {$title}");
            }
        }

        // Update Arabic menu items
        $arabicMenuUpdates = [
            86 => 'إلكترونيات',
            87 => 'أجهزة منزلية',
            88 => 'أجهزة مطبخ',
            89 => 'تليفزيونات',
            90 => 'ثلاجات',
            91 => 'غسالات ملابس',
            92 => 'تكيفات و مبرد هواء',
            93 => 'بوتاجازات و أفران',
            94 => 'شاشات',
            95 => 'غسالات أطباق',
            96 => 'سخانات مياة',
            97 => 'أجهزه بلت أن',
            98 => 'ميكروويف',
            99 => 'مبردات مياة',
        ];

        // Find Arabic menu nodes (they have higher IDs, typically +51 from English)
        foreach ($arabicMenuUpdates as $nodeId => $title) {
            $updated = DB::table('menu_nodes')
                ->where('id', $nodeId)
                ->update(['title' => $title]);
            
            if ($updated) {
                $this->command->info("✓ Updated Arabic menu node {$nodeId}: {$title}");
            }
        }

        $this->command->info('');
        $this->command->info('✅ Menu categories updated!');
    }
}
