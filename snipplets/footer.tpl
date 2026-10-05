<footer class="footer">
  <div class="container footer-grid">
    <div>
      <h4>{{ store.name }}</h4>
      <p>{{ store.description }}</p>
    </div>
    <div>
      <h4>Institucional</h4>
      {% for item in navigation %}<a href="{{ item.url }}">{{ item.name }}</a>{% endfor %}
    </div>
    <div>
      <h4>Contato</h4>
      {% if store.email %}<a href="mailto:{{ store.email }}">{{ store.email }}</a>{% endif %}
      {% if store.whatsapp %}<a href="{{ store.whatsapp }}">WhatsApp</a>{% endif %}
    </div>
  </div>
  <div class="container copyright">© {{ "now" | date("Y") }} {{ store.name }}. Todos os direitos reservados.</div>
</footer>
