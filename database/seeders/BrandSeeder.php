<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\Brand;
use Botble\Slug\Facades\SlugHelper;

class BrandSeeder extends BaseSeeder
{
    public function run(): void
    {
        $brands = [
            [
                'name' => 'Samsung',
            ],
            [
                'name' => 'LG',
            ],
            [
                'name' => 'Toshiba',
            ],
            [
                'name' => 'Sharp',
            ],
            [
                'name' => 'Tornado',
            ],
            [
                'name' => 'Fresh',
            ],
            [
                'name' => 'Olympic',
            ],
        ];

        Brand::query()->truncate();

        foreach ($brands as $key => $item) {
            $item['order'] = $key;
            $item['is_featured'] = true;
            $brand = Brand::query()->create($item);

            SlugHelper::createSlug($brand);
        }
    }
}
