<section class="container section product-page">
  <div class="product-gallery">
    {% for image in product.images %}
      {{ image | product_image_url('huge') | img_tag(image.alt) }}
    {% endfor %}
  </div>
  <div class="product-info">
    <h1>{{ product.name }}</h1>
    <div class="price big">
      {% if product.compare_at_price > product.price %}<s>{{ product.compare_at_price | money }}</s>{% endif %}
      <strong>{{ product.price | money }}</strong>
    </div>
    {% if product.show_installments %}<p>ou {{ product.max_installments }}x sem juros</p>{% endif %}
    <form method="post" action="{{ store.cart_url }}" data-store="product-form-{{ product.id }}">
      {% for variation in product.variations %}
        <label>{{ variation.name }}
          <select name="variation[{{ loop.index0 }}]">
            {% for option in variation.options %}<option value="{{ option.id }}">{{ option.name }}</option>{% endfor %}
          </select>
        </label>
      {% endfor %}
      <input type="number" name="quantity" value="1" min="1">
      <input type="hidden" name="add_to_cart" value="{{ product.id }}">
      {% if product.available %}
        <button type="submit" class="btn">Comprar</button>
      {% else %}
        <button type="button" class="btn" disabled>Sem estoque</button>
      {% endif %}
    </form>
    <div class="description">{{ product.description }}</div>
  </div>
</section>
