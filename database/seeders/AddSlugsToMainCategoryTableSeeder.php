<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class AddSlugsToMainCategoryTableSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Adding slugs to main category table...');

        $categories = [
            1 => 'Electronics',
            2 => 'Home Appliances',
            3 => 'Kitchen Appliances',
            4 => 'Televisions',
            5 => 'Refrigerators',
            6 => 'Washing Machines',
            7 => 'Air Conditioners',
            8 => 'Gas Stoves & Ovens',
            9 => 'Screens & Monitors',
            10 => 'Dishwashers',
            11 => 'Water Heaters',
            12 => 'Built-in Appliances',
            13 => 'Microwaves',
            14 => 'Water Coolers',
        ];

        foreach ($categories as $categoryId => $englishName) {
            $slug = Str::slug($englishName);
            
            DB::table('ec_product_categories')
                ->where('id', $categoryId)
                ->update(['slug' => $slug]);
            
            $this->command->info("✓ Added slug '{$slug}' for category {$categoryId}");
        }

        $this->command->info('');
        $this->command->info('✅ All main category slugs added!');
    }
}
