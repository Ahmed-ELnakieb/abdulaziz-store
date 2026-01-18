<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class FixLanguageMetaSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Fixing language meta with correct origins...');

        // Delete old language meta
        DB::table('language_meta')
            ->where('reference_type', 'Botble\Menu\Models\Menu')
            ->delete();
        
        DB::table('language_meta')
            ->where('reference_type', 'Botble\Menu\Models\MenuLocation')
            ->delete();

        // Create language meta with matching origins for English and Arabic versions
        $menuPairs = [
            ['en_id' => 1, 'ar_id' => 6, 'origin' => md5('main-menu')],
            ['en_id' => 2, 'ar_id' => 7, 'origin' => md5('header-menu')],
            ['en_id' => 3, 'ar_id' => 8, 'origin' => md5('product-categories')],
            ['en_id' => 4, 'ar_id' => 9, 'origin' => md5('information')],
            ['en_id' => 5, 'ar_id' => 10, 'origin' => md5('company')],
        ];

        foreach ($menuPairs as $pair) {
            // English menu
            DB::table('language_meta')->insert([
                'reference_id' => $pair['en_id'],
                'reference_type' => 'Botble\Menu\Models\Menu',
                'lang_meta_code' => 'en_US', // Use en_US for English
                'lang_meta_origin' => $pair['origin'],
            ]);

            // Arabic menu
            DB::table('language_meta')->insert([
                'reference_id' => $pair['ar_id'],
                'reference_type' => 'Botble\Menu\Models\Menu',
                'lang_meta_code' => 'ar',
                'lang_meta_origin' => $pair['origin'],
            ]);
        }

        // Create language meta for menu locations
        $locationPairs = [
            ['en_id' => 1, 'ar_id' => 3, 'origin' => md5('main-menu-location')],
            ['en_id' => 2, 'ar_id' => 4, 'origin' => md5('header-menu-location')],
        ];

        foreach ($locationPairs as $pair) {
            // English location
            DB::table('language_meta')->insert([
                'reference_id' => $pair['en_id'],
                'reference_type' => 'Botble\Menu\Models\MenuLocation',
                'lang_meta_code' => 'en_US', // Use en_US for English
                'lang_meta_origin' => $pair['origin'],
            ]);

            // Arabic location
            DB::table('language_meta')->insert([
                'reference_id' => $pair['ar_id'],
                'reference_type' => 'Botble\Menu\Models\MenuLocation',
                'lang_meta_code' => 'ar',
                'lang_meta_origin' => $pair['origin'],
            ]);
        }

        $this->command->info('Language meta fixed successfully!');
        $this->command->info('English and Arabic menus now share the same origin values.');
    }
}
