{!! BaseHelper::clean(
    trans('core/base::layouts.copyright', [
        'year' => Carbon\Carbon::now()->year,
        'company' => '<a href="mailto:ahmedelnakieb95@gmail.com" style="color: inherit; text-decoration: none;">Elnakieb</a>',
        'version' => sprintf('<span class="fw-medium">%s</span>', get_cms_version()),
    ]),
) !!}
