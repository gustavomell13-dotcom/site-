<article class="product-card">
  <a href="{{ product.url }}">
    <div class="product-img">
      {% if product.featured_image %}{{ product.featured_image | product_image_url('large') | img_tag(product.featured_image.alt) }}{% endif %}
      {% if product.compare_at_price > product.price %}<span class="badge">OFERTA</span>{% endif %}
    </div>
    <h3>{{ product.name }}</h3>
  </a>
  <div class="price">
    {% if product.compare_at_price > product.price %}<s>{{ product.compare_at_price | money }}</s>{% endif %}
    <strong>{{ product.price | money }}</strong>
  </div>
  {% if product.show_installments %}<small>em até {{ product.max_installments }}x</small>{% endif %}
</article>
