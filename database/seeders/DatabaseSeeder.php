<?php

namespace Database\Seeders;

use Botble\ACL\Database\Seeders\UserSeeder;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Database\Seeders\CurrencySeeder;
use Botble\Ecommerce\Database\Seeders\DiscountSeeder;
use Botble\Ecommerce\Database\Seeders\ProductSpecificationSeeder;
use Botble\Ecommerce\Database\Seeders\ReviewSeeder;
use Botble\Ecommerce\Database\Seeders\ShippingSeeder;
use Botble\Ecommerce\Database\Seeders\TaxSeeder;
use Botble\Language\Database\Seeders\LanguageSeeder;

class DatabaseSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->prepareRun();

        $this->call([
            LanguageSeeder::class,
            LanguageArabicSeeder::class, // Add Arabic language
            FaqSeeder::class,
            BrandSeeder::class,
            CurrencySeeder::class,
            ProductCategorySeeder::class,
            ProductCollectionSeeder::class,
            ProductLabelSeeder::class,
            ProductTagSeeder::class,
            ProductAttributeSeeder::class,
            ProductSeeder::class,
            TaxSeeder::class,
            CustomerSeeder::class,
            ReviewSeeder::class,
            ShippingSeeder::class,
            StoreLocatorSeeder::class,
            FlashSaleSeeder::class,
            DiscountSeeder::class,
            SimpleSliderSeeder::class,
            BlogSeeder::class,
            PageSeeder::class,
            UserSeeder::class,
            SettingSeeder::class,
            ProductSpecificationSeeder::class,
            AdsSeeder::class,
            WidgetSeeder::class,
            WidgetArabicSeeder::class, // Create Arabic widgets
            ThemeOptionSeeder::class,
            ProductOptionSeeder::class,
            MarketplaceSeeder::class,
            MenuSeeder::class,
            MenuArabicTranslationSeeder::class, // Create Arabic menus with translations
            FixLanguageMetaSeeder::class, // Fix language meta with correct origins
            FixPageSlugsSeeder::class, // Ensure page slugs exist
            FixCategorySlugsSeeder::class, // Fix category slugs
            AddSlugsToMainCategoryTableSeeder::class, // Add slugs to main category table
            SetAllCategoriesFeaturedSeeder::class, // Make all categories featured
            TranslationSeeder::class, // Add all Arabic translations
        ]);

        $this->finished();
    }
}
