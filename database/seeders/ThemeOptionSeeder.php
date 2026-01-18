<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Facades\Setting;
use Botble\Theme\Facades\ThemeOption;

class ThemeOptionSeeder extends BaseSeeder
{
    public function run(): void
    {
        Setting::newQuery()->where('key', 'LIKE', ThemeOption::getOptionKey('%'))->delete();

        Setting::set(
            ThemeOption::prepareFromArray([
                'site_title' => 'Abdulaziz - Multivendor Electronics & Home Appliances eCommerce',
                'seo_description' => 'Abdulaziz is an attractive Laravel multi-vendor eCommerce script specially designed for electronics stores, home appliances shops, and online stores selling products like televisions, refrigerators, washing machines, air conditioners, kitchen appliances, screens, monitors, and all electronic devices.',
                'copyright' => 'Copyright © %Y Abdulaziz all rights reserved. Designed & Developed by Elnakieb.',
                'favicon' => 'general/favicon.png',
                'logo' => 'general/logo.png',
                'seo_og_image' => 'general/open-graph-image.png',
                
                // Color Settings
                'header_style' => '',
                'color_brand' => 'rgb(103, 78, 167)',
                'color_brand_dark' => 'rgb(43, 24, 93)',
                'color_brand_2' => '#FDC040',
                'color_primary' => '#5a97fa',
                'color_secondary' => '#3e5379',
                'color_warning' => '#ff9900',
                'color_danger' => '#FD6E6E',
                'color_success' => '#81B13D',
                'color_info' => '#2cc1d8',
                'color_text' => '#4c4c4c',
                'color_heading' => '#253D4E',
                'color_grey_1' => '#253D4E',
                'color_grey_2' => '#242424',
                'color_grey_4' => '#adadad',
                'color_grey_9' => '#f4f5f9',
                'color_muted' => '#B6B6B6',
                'color_body' => '#7E7E7E',
                
                'address' => 'القاهرة، مصر - القاهرة',
                'hotline' => '+20 01095646948',
                'hotline_subtitle_text' => '24/7 Support Center',
                'phone' => '+20 01095646948',
                'working_hours' => '10:00 - 18:00, Mon - Sat',
                'homepage_id' => '1',
                'blog_page_id' => '5',
                'cookie_consent_message' => 'Your experience on this site will be improved by allowing cookies ',
                'cookie_consent_learn_more_url' => '/cookie-policy',
                'cookie_consent_learn_more_text' => 'Cookie Policy',
                'payment_methods' => 'general/payment-methods.png',
                'number_of_cross_sale_product' => 4,
                'mobile-header-message' => '<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',
                'blog_page_background' => 'general/header-bg.png',
                'blog_page_icon' => 'general/category-1.png',
                'login_background' => 'general/login-1.png',
                'number_of_products_per_page' => 12,
                'preloader_enabled' => 'yes',
                'preloader_version' => 'v2',
                'preloader_image' => 'general/loading.gif',
                'sticky_header_content_position' => 'middle',
                'social_links' => [
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Facebook',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/facebook.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.facebook.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Twitter',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/twitter.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.twitter.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Instagram',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/instagram.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.instagram.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Pinterest',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/pinterest.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.pinterest.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'social-name',
                            'value' => 'Youtube',
                        ],
                        [
                            'key' => 'social-icon',
                            'value' => 'general/youtube.png',
                        ],
                        [
                            'key' => 'social-url',
                            'value' => 'https://www.youtube.com',
                       ],
                    ],
                ],
                'header_messages' => [
                    [
                        [
                            'key' => 'icon',
                            'value' => 'fi-rs-bell',
                        ],
                        [
                            'key' => 'message',
                            'value' => '<b class="text-success"> Trendy 25</b> silver jewelry, save up 35% off today',
                        ],
                        [
                            'key' => 'link',
                            'value' => '/products',
                        ],
                        [
                            'key' => 'link_text',
                            'value' => 'Shop now',
                        ],
                    ],
                    [
                        [
                            'key' => 'icon',
                            'value' => 'fi-rs-asterisk',
                        ],
                        [
                            'key' => 'message',
                            'value' => '<b class="text-danger">Super Value Deals</b> - Save more with coupons',
                        ],
                        [
                            'key' => 'link',
                            'value' => '/products',
                        ],
                        [
                            'key' => 'link_text',
                            'value' => null,
                        ],
                    ],
                    [
                        [
                            'key' => 'icon',
                            'value' => 'fi-rs-angle-double-right',
                        ],
                        [
                            'key' => 'message',
                            'value' => 'Get great devices up to 50% off',
                        ],
                        [
                            'key' => 'link',
                            'value' => '/products',
                        ],
                        [
                            'key' => 'link_text',
                            'value' => 'View details',
                        ],
                    ],
                ],
                'contact_info_boxes' => [
                    [
                        [
                            'key' => 'name',
                            'value' => 'المكتب الرئيسي',
                        ],
                        [
                            'key' => 'address',
                            'value' => 'القاهرة، مصر - القاهرة',
                        ],
                        [
                            'key' => 'phone',
                            'value' => '+20 01095646948',
                        ],
                        [
                            'key' => 'email',
                            'value' => 'ahmedelnakieb95@gmail.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'name',
                            'value' => 'فرع المبيعات',
                        ],
                        [
                            'key' => 'address',
                            'value' => 'القاهرة، مصر - القاهرة',
                        ],
                        [
                            'key' => 'phone',
                            'value' => '+20 01095646948',
                        ],
                        [
                            'key' => 'email',
                            'value' => 'ahmedelnakieb95@gmail.com',
                        ],
                    ],
                    [
                        [
                            'key' => 'name',
                            'value' => 'المتجر',
                        ],
                        [
                            'key' => 'address',
                            'value' => 'القاهرة، مصر - القاهرة',
                        ],
                        [
                            'key' => 'phone',
                            'value' => '+20 01095646948',
                        ],
                        [
                            'key' => 'email',
                            'value' => 'ahmedelnakieb95@gmail.com',
                        ],
                    ],
                ],
                'number_of_products_per_row' => 5,
            ])
        );

        Setting::save();
    }
}
