<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class TranslationSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Seeding Arabic translations...');

        // Product Categories Translations
        $this->seedProductCategoryTranslations();

        // Menu Translations (Pages)
        $this->seedPageTranslations();

        // Blog Categories Translations
        $this->seedBlogCategoryTranslations();

        // Ads Translations
        $this->seedAdsTranslations();

        // FAQ Translations
        $this->seedFaqTranslations();

        // Product Tags Translations
        $this->seedProductTagTranslations();

        // Product Collections Translations
        $this->seedProductCollectionTranslations();

        // Product Labels Translations
        $this->seedProductLabelTranslations();

        // Brands Translations
        $this->seedBrandTranslations();

        $this->command->info('Arabic translations seeded successfully!');
    }

    protected function seedProductCategoryTranslations(): void
    {
        $translations = [
            1 => ['name' => 'إلكترونيات', 'description' => 'أجهزة إلكترونية متنوعة', 'slug' => 'electronics'],
            2 => ['name' => 'أجهزة منزلية', 'description' => 'أجهزة منزلية كهربائية', 'slug' => 'home-appliances'],
            3 => ['name' => 'أجهزة مطبخ', 'description' => 'أجهزة مطبخ حديثة', 'slug' => 'kitchen-appliances'],
            4 => ['name' => 'تليفزيونات', 'description' => 'تليفزيونات بأحدث التقنيات', 'slug' => 'televisions'],
            5 => ['name' => 'ثلاجات', 'description' => 'ثلاجات بسعات مختلفة', 'slug' => 'refrigerators'],
            6 => ['name' => 'غسالات ملابس', 'description' => 'غسالات ملابس أوتوماتيك', 'slug' => 'washing-machines'],
            7 => ['name' => 'تكيفات و مبرد هواء', 'description' => 'تكيفات ومبردات هواء', 'slug' => 'air-conditioners'],
            8 => ['name' => 'بوتاجازات و أفران', 'description' => 'بوتاجازات وأفران غاز وكهرباء', 'slug' => 'gas-stoves-ovens'],
            9 => ['name' => 'شاشات', 'description' => 'شاشات كمبيوتر وتلفزيون', 'slug' => 'screens-monitors'],
            10 => ['name' => 'غسالات أطباق', 'description' => 'غسالات أطباق أوتوماتيك', 'slug' => 'dishwashers'],
            11 => ['name' => 'سخانات مياة', 'description' => 'سخانات مياه كهربائية وغاز', 'slug' => 'water-heaters'],
            12 => ['name' => 'أجهزه بلت أن', 'description' => 'أجهزة مطبخ مدمجة', 'slug' => 'built-in-appliances'],
            13 => ['name' => 'ميكروويف', 'description' => 'أفران ميكروويف', 'slug' => 'microwaves'],
            14 => ['name' => 'مبردات مياة', 'description' => 'مبردات مياه', 'slug' => 'water-coolers'],
        ];

        foreach ($translations as $categoryId => $translation) {
            DB::table('ec_product_categories_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'ec_product_categories_id' => $categoryId],
                [
                    'name' => $translation['name'],
                    'description' => $translation['description'] ?? null,
                    'slug' => $translation['slug'] ?? null,
                ]
            );
        }

        $this->command->info('Product category translations seeded.');
    }

    protected function seedPageTranslations(): void
    {
        $translations = [
            1 => ['name' => 'الصفحة الرئيسية', 'description' => 'الصفحة الرئيسية'],
            2 => ['name' => 'الصفحة الرئيسية 2', 'description' => 'الصفحة الرئيسية 2'],
            3 => ['name' => 'الصفحة الرئيسية 3', 'description' => 'الصفحة الرئيسية 3'],
            4 => ['name' => 'الصفحة الرئيسية 4', 'description' => 'الصفحة الرئيسية 4'],
            5 => ['name' => 'المدونة', 'description' => 'مقالات ومدونات'],
            6 => ['name' => 'اتصل بنا', 'description' => 'تواصل معنا'],
            7 => ['name' => 'من نحن', 'description' => 'معلومات عنا'],
            8 => ['name' => 'سياسة ملفات تعريف الارتباط', 'description' => 'سياسة الكوكيز'],
            9 => ['name' => 'الشروط والأحكام', 'description' => 'شروط الاستخدام'],
            10 => ['name' => 'الإرجاع والاستبدال', 'description' => 'سياسة الإرجاع والاستبدال'],
            11 => ['name' => 'الشحن والتوصيل', 'description' => 'معلومات الشحن والتوصيل'],
            12 => ['name' => 'سياسة الخصوصية', 'description' => 'سياسة حماية البيانات'],
            13 => ['name' => 'قائمة المدونة', 'description' => 'عرض المقالات كقائمة'],
            14 => ['name' => 'المدونة الكبيرة', 'description' => 'عرض المقالات بشكل كبير'],
            15 => ['name' => 'المدونة العريضة', 'description' => 'عرض المقالات بشكل عريض'],
            16 => ['name' => 'الصفحة الرئيسية 5', 'description' => 'الصفحة الرئيسية 5'],
            17 => ['name' => 'الصفحة الرئيسية 6', 'description' => 'الصفحة الرئيسية 6'],
            18 => ['name' => 'الأسئلة الشائعة', 'description' => 'الأسئلة المتكررة'],
            19 => ['name' => 'قريباً', 'description' => 'صفحة قريباً'],
        ];

        foreach ($translations as $pageId => $translation) {
            DB::table('pages_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'pages_id' => $pageId],
                [
                    'name' => $translation['name'],
                    'description' => $translation['description'] ?? null,
                ]
            );
        }

        $this->command->info('Page translations seeded.');
    }

    protected function seedBlogCategoryTranslations(): void
    {
        $translations = [
            1 => ['name' => 'التجارة الإلكترونية', 'description' => 'مقالات عن التجارة الإلكترونية'],
            2 => ['name' => 'الموضة', 'description' => 'أخبار وصيحات الموضة'],
            3 => ['name' => 'الإلكترونيات', 'description' => 'أخبار التقنية والإلكترونيات'],
            4 => ['name' => 'التجاري', 'description' => 'المواضيع التجارية'],
        ];

        foreach ($translations as $categoryId => $translation) {
            DB::table('categories_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'categories_id' => $categoryId],
                [
                    'name' => $translation['name'],
                    'description' => $translation['description'] ?? null,
                ]
            );
        }

        $this->command->info('Blog category translations seeded.');
    }

    protected function seedAdsTranslations(): void
    {
        $translations = [
            1 => ['name' => 'طازج كل يوم'],
            2 => ['name' => 'اصنع فطورك'],
            3 => ['name' => 'أفضل المنتجات العضوية'],
            4 => ['name' => 'أحضر الطبيعة إلى منزلك'],
            5 => ['name' => 'توصيل إلى منزلك'],
            6 => ['name' => 'وفر 17% على العصير العضوي'],
            7 => ['name' => 'طازج ونظيف كل يوم مع منتجاتنا'],
            8 => ['name' => 'أفضل المنتجات العضوية عبر الإنترنت'],
            9 => ['name' => 'طازج كل يوم مع منتجاتنا'],
            10 => ['name' => '100% ضمان جميع المنتجات الطازجة'],
            11 => ['name' => 'تخفيضات خاصة على البقالة هذا الشهر'],
            12 => ['name' => 'استمتع بخصم 15% على جميع الخضروات والفواكه'],
        ];

        foreach ($translations as $adId => $translation) {
            DB::table('ads_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'ads_id' => $adId],
                ['name' => $translation['name']]
            );
        }

        $this->command->info('Ads translations seeded.');
    }

    protected function seedFaqTranslations(): void
    {
        // FAQ Categories
        $categoryTranslations = [
            1 => ['name' => 'الشحن'],
            2 => ['name' => 'الدفع'],
            3 => ['name' => 'الطلب والإرجاع'],
        ];

        foreach ($categoryTranslations as $categoryId => $translation) {
            DB::table('faq_categories_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'faq_categories_id' => $categoryId],
                ['name' => $translation['name']]
            );
        }

        $this->command->info('FAQ translations seeded.');
    }

    protected function seedProductTagTranslations(): void
    {
        $translations = [
            1 => ['name' => 'سمارت تي في'],
            2 => ['name' => 'انفرتر'],
            3 => ['name' => 'نوفروست'],
            4 => ['name' => 'ديجيتال'],
            5 => ['name' => 'موفر للطاقة'],
        ];

        foreach ($translations as $tagId => $translation) {
            DB::table('ec_product_tags_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'ec_product_tags_id' => $tagId],
                ['name' => $translation['name']]
            );
        }

        $this->command->info('Product tag translations seeded.');
    }

    protected function seedProductCollectionTranslations(): void
    {
        $translations = [
            1 => ['name' => 'وصول جديد', 'description' => 'منتجات جديدة'],
            2 => ['name' => 'الأكثر مبيعاً', 'description' => 'المنتجات الأكثر مبيعاً'],
            3 => ['name' => 'عرض خاص', 'description' => 'عروض خاصة ومحدودة'],
        ];

        foreach ($translations as $collectionId => $translation) {
            DB::table('ec_product_collections_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'ec_product_collections_id' => $collectionId],
                [
                    'name' => $translation['name'],
                    'description' => $translation['description'] ?? null,
                ]
            );
        }

        $this->command->info('Product collection translations seeded.');
    }

    protected function seedProductLabelTranslations(): void
    {
        $translations = [
            1 => ['name' => 'ساخن', 'description' => 'منتج رائج'],
            2 => ['name' => 'جديد', 'description' => 'منتج جديد'],
            3 => ['name' => 'تخفيض', 'description' => 'منتج مخفض'],
        ];

        foreach ($translations as $labelId => $translation) {
            DB::table('ec_product_labels_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'ec_product_labels_id' => $labelId],
                [
                    'name' => $translation['name'],
                    'description' => $translation['description'] ?? null,
                ]
            );
        }

        $this->command->info('Product label translations seeded.');
    }

    protected function seedBrandTranslations(): void
    {
        $translations = [
            1 => ['name' => 'سامسونج', 'description' => 'علامة سامسونج التجارية للإلكترونيات'],
            2 => ['name' => 'ال جي', 'description' => 'علامة ال جي التجارية للأجهزة المنزلية'],
            3 => ['name' => 'توشيبا', 'description' => 'علامة توشيبا التجارية للإلكترونيات'],
            4 => ['name' => 'شارب', 'description' => 'علامة شارب التجارية للأجهزة الكهربائية'],
            5 => ['name' => 'تورنيدو', 'description' => 'علامة تورنيدو التجارية للأجهزة المنزلية'],
            6 => ['name' => 'فريش', 'description' => 'علامة فريش التجارية للأجهزة المنزلية'],
            7 => ['name' => 'اوليمبيك', 'description' => 'علامة اوليمبيك التجارية للسخانات'],
        ];

        foreach ($translations as $brandId => $translation) {
            DB::table('ec_brands_translations')->updateOrInsert(
                ['lang_code' => 'ar', 'ec_brands_id' => $brandId],
                [
                    'name' => $translation['name'],
                    'description' => $translation['description'] ?? null,
                ]
            );
        }

        $this->command->info('Brand translations seeded.');
    }
}
