<section class="banner-collection">
  <div class="container">
    <nav class="breadcrumb"><a href="{{ store.url }}">Início</a> / <a href="{{ store.products_url }}">Coleções</a> / <span>{{ category.name }}</span></nav>
    <h1>{{ category.name }}</h1>
    {% if category.description %}<p>{{ category.description }}</p>{% endif %}
  </div>
</section>
<section class="container section">
  <div class="toolbar">
    <span>{{ products_count }} produtos</span>
    <label>Ordenar por:
      <select data-sort onchange="location.href=this.value">
        <option value="?sort_by=user">Em destaque</option>
        <option value="?sort_by=best-selling">Mais vendidos</option>
        <option value="?sort_by=alpha-ascending">A–Z</option>
        <option value="?sort_by=alpha-descending">Z–A</option>
        <option value="?sort_by=price-ascending">Menor preço</option>
        <option value="?sort_by=price-descending">Maior preço</option>
        <option value="?sort_by=created-descending">Mais recentes</option>
      </select>
    </label>
  </div>
  <div class="grid cols-{{ settings.products_per_row }}">
    {% for product in products %}
      {% include 'snipplets/product-item.tpl' %}
    {% else %}
      <p>Nenhum produto encontrado.</p>
    {% endfor %}
  </div>
  {% if pagination.hasPages %}<div class="pagination">{{ pagination.render }}</div>{% endif %}
</section>
