<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Page\Models\Page;
use Botble\Slug\Facades\SlugHelper;

class FixPageSlugsSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Creating page slugs...');

        $pages = Page::all();

        foreach ($pages as $page) {
            SlugHelper::createSlug($page);
        }

        $this->command->info('Page slugs created successfully!');
    }
}
