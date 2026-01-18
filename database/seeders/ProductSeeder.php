<?php

namespace Database\Seeders;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Database\Seeders\Traits\HasProductSeeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\File;

class ProductSeeder extends BaseSeeder
{
    use HasProductSeeder;

    public function run(): void
    {
        $this->uploadFiles('products');

        $faker = $this->fake();

        $products = [
            [
                'name' => 'تليفزيون سامسونج 55 بوصة سمارت 4K',
                'is_featured' => true,
                'metadata' => [
                    'layout' => 'product-right-sidebar',
                ],
            ],
            [
                'name' => 'ثلاجة ال جي 18 قدم نوفروست سيلفر',
                'is_featured' => true,
                'metadata' => [
                    'layout' => 'product-left-sidebar',
                ],
            ],
            [
                'name' => 'غسالة توشيبا فوق اتوماتيك 10 كيلو',
                'is_featured' => true,
                'metadata' => [
                    'layout' => 'product-full-width',
                ],
            ],
            [
                'name' => 'تكييف شارب 1.5 حصان بارد ساخن انفرتر',
                'is_featured' => true,
            ],
            [
                'name' => 'بوتاجاز فريش 5 شعلة ستانلس ستيل',
                'is_featured' => true,
            ],
            [
                'name' => 'سخان اوليمبيك كهرباء 50 لتر',
                'is_featured' => true,
            ],
            [
                'name' => 'شاشة ال جي 43 بوصة سمارت FHD',
                'is_featured' => true,
            ],
            [
                'name' => 'ديب فريزر توشيبا 5 درج نوفروست',
                'is_featured' => true,
            ],
            [
                'name' => 'غسالة اطباق بوش 12 فرد ستانلس',
                'is_featured' => true,
            ],
            [
                'name' => 'مروحة تورنيدو سقف 56 بوصة ابيض',
                'is_featured' => true,
            ],
            [
                'name' => 'ميكروويف سامسونج 40 لتر ديجيتال',
                'is_featured' => true,
            ],
            [
                'name' => 'مبرد مياه تورنيدو 2 حنفية بارد ساخن',
                'is_featured' => true,
            ],
            [
                'name' => 'شفاط مطبخ فريش 90 سم ستانلس',
                'is_featured' => true,
            ],
            [
                'name' => 'فرن كهربائي تورنيدو 48 لتر',
                'is_featured' => true,
            ],
            [
                'name' => 'خلاط براون 600 وات مع مطحنة',
                'is_featured' => true,
            ],
            [
                'name' => 'تليفزيون ال جي 65 بوصة OLED سمارت',
                'is_featured' => true,
            ],
            [
                'name' => 'ثلاجة سامسونج 24 قدم بابين سيلفر',
                'is_featured' => true,
            ],
            [
                'name' => 'غسالة ال جي فول اتوماتيك 8 كيلو',
                'is_featured' => true,
            ],
            [
                'name' => 'تكييف كاريير 2.25 حصان بارد فقط',
                'is_featured' => true,
            ],
            [
                'name' => 'بوتاجاز يونيون تك 4 شعلة ابيض',
                'is_featured' => true,
            ],
            [
                'name' => 'سخان غاز اوليمبيك 10 لتر ديجيتال',
                'is_featured' => true,
            ],
            [
                'name' => 'شاشة سامسونج 50 بوصة كريستال UHD',
                'is_featured' => true,
            ],
            [
                'name' => 'ثلاجة شارب 16 قدم نوفروست ابيض',
                'is_featured' => true,
            ],
            [
                'name' => 'غسالة زانوسي فول اتوماتيك 7 كيلو',
                'is_featured' => true,
            ],
        ];

        foreach ($products as $key => &$item) {
            if (! isset($item['description'])) {
                $item['description'] = file_get_contents(__DIR__ . '/contents/product-description.html');
            }

            $item['content'] = file_get_contents(__DIR__ . '/contents/product-content.html');
            $item['status'] = BaseStatusEnum::PUBLISHED;
            $item['sku'] = 'EL-' . $faker->numberBetween(100, 200);
            $item['brand_id'] = $faker->numberBetween(1, 7);
            $item['views'] = $faker->numberBetween(1000, 200000);
            $item['quantity'] = $faker->numberBetween(10, 20);
            $item['length'] = $faker->numberBetween(10, 20);
            $item['wide'] = $faker->numberBetween(10, 20);
            $item['height'] = $faker->numberBetween(10, 20);
            $item['weight'] = $faker->numberBetween(500, 900);
            $item['with_storehouse_management'] = true;

            if ($key % 2 == 0) {
                Arr::set($item, 'metadata.is_popular', '1');
            }

            $images = [
                'products/' . ($key + 1) . '.jpg',
            ];

            for ($i = 1; $i <= 10; $i++) {
                if (File::exists(database_path('seeders/files/products/' . ($key + 1) . '-' . $i . '.jpg'))) {
                    $images[] = 'products/' . ($key + 1) . '-' . $i . '.jpg';
                }
            }

            $item['images'] = json_encode($images);
        }

        $this->createProducts($products);
    }
}
