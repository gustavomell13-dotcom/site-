<!DOCTYPE html>
<html lang="{{ current_language.lang }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{ page_title }}</title>
  <meta name="description" content="{{ page_description }}">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
  {{ 'css/style.css.tpl' | static_url | css_tag }}
  {% head_content %}
</head>
<body class="template-{{ template }}">
  {% snipplet "header.tpl" %}
  <main>
    {% template_content %}
  </main>
  {% snipplet "footer.tpl" %}
  {{ 'js/main.js' | static_url | script_tag }}
  {% body_content %}
</body>
</html>
