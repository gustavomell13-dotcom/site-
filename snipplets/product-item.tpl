<article class="product-card">
  <a class="product-media" href="{{ product.url }}" aria-label="{{ product.name }}">
    {% if product.featured_image %}{{ product.featured_image | product_image_url('large') | img_tag(product.featured_image.alt) }}{% endif %}
    {% set second = product.images | slice(1, 1) | first %}
    {% if second %}<span class="hover-img">{{ second | product_image_url('large') | img_tag(product.name) }}</span>{% endif %}
    {% if product.compare_at_price > product.price %}<span class="badge">OFERTA</span>{% endif %}
  </a>
  <div class="product-body">
    <h3><a href="{{ product.url }}">{{ product.name }}</a></h3>
    <div class="price">
      {% if product.compare_at_price > product.price %}<s>{{ product.compare_at_price | money }}</s>{% endif %}
      <strong>{{ product.price | money }}</strong>
    </div>
    {% if product.show_installments %}
      <small class="installments">em até <b>{{ product.max_installments }}x</b> de <b>{{ product.max_installments_price | money }}</b> sem juros</small>
    {% endif %}
    {% for variation in product.variations %}
      {% if loop.first %}<small class="variants">{{ variation.options | length }} opções de {{ variation.name | lower }}</small>{% endif %}
    {% endfor %}
  </div>
</article>
