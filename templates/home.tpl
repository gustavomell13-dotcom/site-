<section class="hero" {% if 'hero_image' | has_custom_image %}style="background-image:url('{{ 'hero_image' | get_theme_image }}')"{% endif %}>
  <div class="container">
    <h1>{{ settings.hero_title }}</h1>
    <p>{{ settings.hero_subtitle }}</p>
    {% if settings.hero_button %}<a class="btn" href="{{ store.products_url }}">{{ settings.hero_button }}</a>{% endif %}
  </div>
</section>

<section class="container section">
  <h2>{{ settings.home_products_title }}</h2>
  <div class="grid cols-{{ settings.products_per_row }}">
    {% for product in sections.primary.products %}
      {% include 'snipplets/product-item.tpl' %}
    {% endfor %}
  </div>
</section>
