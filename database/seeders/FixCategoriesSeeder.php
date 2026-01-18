<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;

class FixCategoriesSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Fixing categories display and slugs...');
        $this->command->info('');

        // Reset category structure (remove parent relationships)
        $this->call(ResetCategoryStructureSeeder::class);
        
        // Fix all slugs
        $this->call(FixCategorySlugsSeeder::class);

        $this->command->info('');
        $this->command->info('✅ Categories fixed!');
        $this->command->info('Now clear cache: php artisan cache:clear');
    }
}
