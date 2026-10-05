<footer class="footer">
  <div class="container footer-grid">
    <div class="footer-brand">
      <a class="logo" href="{{ store.url }}">{{ store.name }}</a>
      <ul class="social">
        {% if store.facebook %}<li><a href="{{ store.facebook }}">Facebook</a></li>{% endif %}
        {% if store.instagram %}<li><a href="{{ store.instagram }}">Instagram</a></li>{% endif %}
        {% if store.tiktok %}<li><a href="{{ store.tiktok }}">TikTok</a></li>{% endif %}
      </ul>
    </div>
    <details open class="footer-col">
      <summary>Mais sobre {{ store.name }}</summary>
      {% for item in navigation %}<a href="{{ item.url }}">{{ item.name }}</a>{% endfor %}
    </details>
    <details open class="footer-col">
      <summary>Atendimento</summary>
      {% if store.whatsapp %}<a href="{{ store.whatsapp }}">WhatsApp</a>{% endif %}
      {% if store.email %}<a href="mailto:{{ store.email }}">{{ store.email }}</a>{% endif %}
    </details>
  </div>
  <div class="container copyright">
    <span>© {{ "now" | date("Y") }} {{ store.name }}. Todos os direitos reservados.</span>
    <span class="payments">Visa · Mastercard · Elo · Amex · Pix</span>
  </div>
</footer>
