<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class SetAllCategoriesFeaturedSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Setting all categories as featured...');

        // Set all categories as featured so they show in the dropdown
        DB::table('ec_product_categories')
            ->update(['is_featured' => 1]);

        $this->command->info('✅ All categories are now featured and will show in dropdown!');
    }
}
