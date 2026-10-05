<section class="container section">
  <h1>{{ category.name }}</h1>
  {% if category.description %}<p>{{ category.description }}</p>{% endif %}
  <div class="grid cols-{{ settings.products_per_row }}">
    {% for product in products %}
      {% include 'snipplets/product-item.tpl' %}
    {% else %}
      <p>Nenhum produto encontrado.</p>
    {% endfor %}
  </div>
  {% if pagination.hasPages %}
    <div class="pagination">{{ pagination.render }}</div>
  {% endif %}
</section>
