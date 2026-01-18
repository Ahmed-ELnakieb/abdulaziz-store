<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Widget\Models\Widget as WidgetModel;
use Illuminate\Support\Facades\DB;

class WidgetArabicSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->command->info('Creating Arabic widgets...');

        // Check current language
        $arabicLang = DB::table('languages')->where('lang_locale', 'ar')->first();
        
        if (!$arabicLang) {
            $this->command->error('Arabic language not found!');
            return;
        }

        // Get all existing widgets
        $existingWidgets = WidgetModel::query()->where('theme', 'nest')->get();

        foreach ($existingWidgets as $widget) {
            $data = is_string($widget->data) ? json_decode($widget->data, true) : $widget->data;
            
            // Update menu references to Arabic versions
            if (isset($data['menu_id'])) {
                $data['menu_id'] = $data['menu_id'] . '-ar';
            }
            
            // Translate widget names and content
            $data = $this->translateWidgetData($data);
            
            // Create Arabic version with nest-ar theme
            WidgetModel::query()->updateOrCreate(
                [
                    'widget_id' => $widget->widget_id,
                    'sidebar_id' => $widget->sidebar_id,
                    'theme' => 'nest-ar',
                    'position' => $widget->position,
                ],
                [
                    'data' => $data,
                ]
            );
        }

        $this->command->info('Arabic widgets created successfully!');
    }

    protected function translateWidgetData(array $data): array
    {
        // Translate common widget fields
        $translations = [
            'Site information' => 'معلومات الموقع',
            'Company' => 'الشركة',
            'Categories' => 'الفئات',
            'Information' => 'معلومات',
            'Install App' => 'تثبيت التطبيق',
            'Search' => 'بحث',
            'Trending Now' => 'الرائج الآن',
            'Popular Tags' => 'الوسوم الشائعة',
            'Organic' => 'عضوي',
            'New products' => 'منتجات جديدة',
            'Site Features' => 'مميزات الموقع',
            
            // Site Info Widget
            'Awesome grocery store website template' => 'قالب موقع متجر بقالة رائع',
            
            // Install App Widget
            'From App Store or Google Play' => 'من متجر التطبيقات أو جوجل بلاي',
            'Secured Payment Gateways' => 'بوابات دفع آمنة',
            
            // Newsletter Widget
            'Stay home & get your daily <br />needs from our shop' => 'ابق في المنزل واحصل على احتياجاتك اليومية <br />من متجرنا',
            'Start Your Daily Shopping with <span>Nest Mart</span>' => 'ابدأ تسوقك اليومي مع <span>شارع عبدالعزيز</span>',
            
            // Site Features
            'Best prices & offers' => 'أفضل الأسعار والعروض',
            'Orders $50 or more' => 'طلبات بقيمة 50 دولار أو أكثر',
            'Free delivery' => 'توصيل مجاني',
            '24/7 amazing services' => 'خدمات مذهلة على مدار الساعة',
            'Great daily deal' => 'صفقة يومية رائعة',
            'When you sign up' => 'عند التسجيل',
            'Wide assortment' => 'تشكيلة واسعة',
            'Mega Discounts' => 'خصومات ضخمة',
            'Easy returns' => 'إرجاع سهل',
            'Within 30 days' => 'خلال 30 يوم',
        ];

        // Translate name field
        if (isset($data['name']) && isset($translations[$data['name']])) {
            $data['name'] = $translations[$data['name']];
        }

        // Translate title field
        if (isset($data['title']) && isset($translations[$data['title']])) {
            $data['title'] = $translations[$data['title']];
        }

        // Translate about field
        if (isset($data['about']) && isset($translations[$data['about']])) {
            $data['about'] = $translations[$data['about']];
        }

        // Translate subtitle field
        if (isset($data['subtitle']) && isset($translations[$data['subtitle']])) {
            $data['subtitle'] = $translations[$data['subtitle']];
        }

        // Translate apps_description
        if (isset($data['apps_description']) && isset($translations[$data['apps_description']])) {
            $data['apps_description'] = $translations[$data['apps_description']];
        }

        // Translate payment_gateway_description
        if (isset($data['payment_gateway_description']) && isset($translations[$data['payment_gateway_description']])) {
            $data['payment_gateway_description'] = $translations[$data['payment_gateway_description']];
        }

        // Translate nested data (for SiteFeaturesWidget)
        if (isset($data['data']) && is_array($data['data'])) {
            foreach ($data['data'] as $key => $item) {
                if (isset($item['title']) && isset($translations[$item['title']])) {
                    $data['data'][$key]['title'] = $translations[$item['title']];
                }
                if (isset($item['subtitle']) && isset($translations[$item['subtitle']])) {
                    $data['data'][$key]['subtitle'] = $translations[$item['subtitle']];
                }
            }
        }

        return $data;
    }
}
