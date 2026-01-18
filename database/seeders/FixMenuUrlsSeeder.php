<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class FixMenuUrlsSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Fixing menu URLs to match new category slugs...');

        // English menu (menu_id = 3) - Product Categories
        $englishMenuUpdates = [
            35 => '/product-categories/electronics',
            36 => '/product-categories/home-appliances',
            37 => '/product-categories/kitchen-appliances',
            38 => '/product-categories/televisions',
            39 => '/product-categories/refrigerators',
            40 => '/product-categories/washing-machines',
            41 => '/product-categories/air-conditioners',
            42 => '/product-categories/gas-stoves-ovens',
            43 => '/product-categories/screens-monitors',
            44 => '/product-categories/dishwashers',
            45 => '/product-categories/water-heaters',
            46 => '/product-categories/built-in-appliances',
            47 => '/product-categories/microwaves',
            48 => '/product-categories/water-coolers',
        ];

        foreach ($englishMenuUpdates as $nodeId => $url) {
            $updated = DB::table('menu_nodes')
                ->where('id', $nodeId)
                ->update(['url' => $url]);
            
            if ($updated) {
                $this->command->info("✓ Updated English menu node {$nodeId}: {$url}");
            }
        }

        // Arabic menu (menu_id = 8) - Product Categories
        $arabicMenuUpdates = [
            86 => '/product-categories/electronics',
            87 => '/product-categories/home-appliances',
            88 => '/product-categories/kitchen-appliances',
            89 => '/product-categories/televisions',
            90 => '/product-categories/refrigerators',
            91 => '/product-categories/washing-machines',
            92 => '/product-categories/air-conditioners',
            93 => '/product-categories/gas-stoves-ovens',
            94 => '/product-categories/screens-monitors',
            95 => '/product-categories/dishwashers',
            96 => '/product-categories/water-heaters',
            97 => '/product-categories/built-in-appliances',
            98 => '/product-categories/microwaves',
            99 => '/product-categories/water-coolers',
        ];

        foreach ($arabicMenuUpdates as $nodeId => $url) {
            $updated = DB::table('menu_nodes')
                ->where('id', $nodeId)
                ->update(['url' => $url]);
            
            if ($updated) {
                $this->command->info("✓ Updated Arabic menu node {$nodeId}: {$url}");
            }
        }

        $this->command->info('');
        $this->command->info('✅ All menu URLs fixed!');
    }
}
