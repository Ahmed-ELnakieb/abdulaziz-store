<?php

namespace Database\Seeders;

use Botble\Base\Facades\MetaBox;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Support\Arr;

class ProductCategorySeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('product-categories');

        $categories = [
            [
                'name' => 'Electronics',
                'icon' => 'icon-cpu',
            ],
            [
                'name' => 'Home Appliances',
                'icon' => 'icon-home',
            ],
            [
                'name' => 'Kitchen Appliances',
                'icon' => 'icon-coffee',
            ],
            [
                'name' => 'Televisions',
                'icon' => 'icon-tv',
            ],
            [
                'name' => 'Refrigerators',
                'icon' => 'icon-archive',
            ],
            [
                'name' => 'Washing Machines',
                'icon' => 'icon-disc',
            ],
            [
                'name' => 'Air Conditioners',
                'icon' => 'icon-wind',
            ],
            [
                'name' => 'Gas Stoves & Ovens',
                'icon' => 'icon-zap',
            ],
            [
                'name' => 'Screens & Monitors',
                'icon' => 'icon-monitor',
            ],
            [
                'name' => 'Dishwashers',
                'icon' => 'icon-droplet',
            ],
            [
                'name' => 'Water Heaters',
                'icon' => 'icon-thermometer',
            ],
            [
                'name' => 'Built-in Appliances',
                'icon' => 'icon-grid',
            ],
            [
                'name' => 'Microwaves',
                'icon' => 'icon-box',
            ],
            [
                'name' => 'Water Coolers',
                'icon' => 'icon-droplet',
            ],
        ];

        ProductCategory::query()->truncate();

        foreach ($categories as $index => $item) {
            $this->createCategoryItem($index, $item);
        }
    }

    protected function colors(): array
    {
        return [
            '#F2FCE4',
            '#FFFCEB',
            '#ECFFEC',
            '#FEEFEA',
            '#FFF3EB',
            '#FFF3FF',
        ];
    }

    protected function createCategoryItem(int $index, array $category, int $parentId = 0): void
    {
        $category['parent_id'] = $parentId;
        $category['order'] = $index;
        $category['is_featured'] = $index < 12;
        $category['image'] = 'product-categories/image-' . ($index + 1) . '.png';
        $category['icon_image'] = 'product-categories/icon-' . ($index + 1) . '.png';

        if (Arr::has($category, 'children')) {
            $children = $category['children'];
            unset($category['children']);
        } else {
            $children = [];
        }

        $createdCategory = ProductCategory::query()->create($category);

        SlugHelper::createSlug($createdCategory);

        MetaBox::saveMetaBoxData(
            $createdCategory,
            'background_color',
            Arr::get($this->colors(), $index % count($this->colors()))
        );

        if ($children) {
            foreach ($children as $childIndex => $child) {
                $this->createCategoryItem($childIndex, $child, $createdCategory->id);
            }
        }
    }
}
