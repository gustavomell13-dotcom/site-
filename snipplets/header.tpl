{% if settings.announcement_text %}
<div class="announcement">{{ settings.announcement_text }}</div>
{% endif %}
<header class="header">
  <div class="container header-inner">
    <button class="menu-toggle" aria-label="Menu" data-menu-toggle>☰</button>
    <a class="logo" href="{{ store.url }}">
      {% if has_logo %}{{ store.logo('medium') | img_tag(store.name) }}{% else %}{{ store.name }}{% endif %}
    </a>
    <nav class="nav" data-nav>
      {% for item in navigation %}
        <a href="{{ item.url }}">{{ item.name }}</a>
      {% endfor %}
    </nav>
    <form class="search" action="{{ store.search_url }}" method="get">
      <input type="search" name="q" placeholder="Buscar produtos">
    </form>
    <a class="cart-link" href="{{ store.cart_url }}">Carrinho (<span data-cart-count>{{ cart.items_count }}</span>)</a>
  </div>
</header>
