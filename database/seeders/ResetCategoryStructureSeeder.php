<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class ResetCategoryStructureSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Resetting category structure to show all categories...');

        // Reset all categories to be top-level (no parent)
        DB::table('ec_product_categories')
            ->update(['parent_id' => 0]);

        $this->command->info('✅ All categories are now top-level!');
        $this->command->info('All 14 categories will be visible in the menu.');
    }
}
