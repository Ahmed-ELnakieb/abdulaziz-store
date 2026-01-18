<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductTag;
use Botble\Slug\Facades\SlugHelper;

class ProductTagSeeder extends BaseSeeder
{
    public function run(): void
    {
        $tags = [
            [
                'name' => 'Smart TV',
            ],
            [
                'name' => 'Inverter',
            ],
            [
                'name' => 'No Frost',
            ],
            [
                'name' => 'Digital',
            ],
            [
                'name' => 'Energy Saving',
            ],
        ];

        ProductTag::query()->truncate();

        foreach ($tags as $item) {
            $tag = ProductTag::query()->create($item);

            SlugHelper::createSlug($tag);
        }
    }
}
