<section class="container section">
  <h1>Seu carrinho</h1>
  {% if cart.items %}
    <form method="post" action="{{ store.cart_url }}">
      {% for item in cart.items %}
        <div class="cart-row">
          {{ item.featured_image | product_image_url('small') | img_tag(item.name) }}
          <div><a href="{{ item.url }}">{{ item.name }}</a></div>
          <input type="number" name="quantity[{{ item.id }}]" value="{{ item.quantity }}" min="0">
          <strong>{{ item.subtotal | money }}</strong>
        </div>
      {% endfor %}
      <p class="cart-total">Total: <strong>{{ cart.total | money }}</strong></p>
      <button class="btn" type="submit" name="update">Atualizar</button>
      <a class="btn accent" href="{{ store.checkout_url }}">Finalizar compra</a>
    </form>
  {% else %}
    <p>Seu carrinho está vazio.</p>
    <a class="btn" href="{{ store.products_url }}">Continuar comprando</a>
  {% endif %}
</section>
