{% if settings.announcement_text %}
<div class="announcement">{{ settings.announcement_text }}</div>
{% endif %}
<header class="header">
  <div class="container header-inner">
    <div class="header-start">
      <button class="icon-btn" aria-label="Buscar" data-search-toggle>🔍</button>
      <button class="icon-btn menu-toggle" aria-label="Menu" data-menu-toggle>☰</button>
    </div>
    <a class="logo" href="{{ store.url }}">
      {% if has_logo %}{{ store.logo('medium') | img_tag(store.name) }}{% else %}{{ store.name }}{% endif %}
    </a>
    <nav class="nav" data-nav aria-label="Principal">
      <ul>
      {% for item in navigation %}
        <li class="{% if item.subitems %}has-sub{% endif %}">
          <a href="{{ item.url }}">{{ item.name }}</a>
          {% if item.subitems %}
          <ul class="sub">
            {% for sub in item.subitems %}
            <li class="{% if sub.subitems %}has-sub{% endif %}">
              <a href="{{ sub.url }}">{{ sub.name }}</a>
              {% if sub.subitems %}
              <ul class="sub">
                {% for s3 in sub.subitems %}<li><a href="{{ s3.url }}">{{ s3.name }}</a></li>{% endfor %}
              </ul>
              {% endif %}
            </li>
            {% endfor %}
          </ul>
          {% endif %}
        </li>
      {% endfor %}
      </ul>
    </nav>
    <div class="header-end">
      <a class="icon-btn" href="{{ store.customer_url }}" aria-label="Minha conta">👤</a>
      <a class="icon-btn cart-link" href="{{ store.cart_url }}" aria-label="Carrinho">🛍<span class="cart-count" data-cart-count>{{ cart.items_count }}</span></a>
    </div>
  </div>
  <form class="search-panel" data-search-panel action="{{ store.search_url }}" method="get" hidden>
    <div class="container"><input type="search" name="q" placeholder="Procurar..." autocomplete="off"></div>
  </form>
</header>
