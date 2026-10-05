document.addEventListener('DOMContentLoaded', function () {
  var q = function (s) { return document.querySelector(s); };
  var toggle = q('[data-menu-toggle]'), nav = q('[data-nav]');
  if (toggle && nav) toggle.addEventListener('click', function () { nav.classList.toggle('open'); });
  var st = q('[data-search-toggle]'), sp = q('[data-search-panel]');
  if (st && sp) st.addEventListener('click', function () {
    sp.hidden = !sp.hidden;
    if (!sp.hidden) sp.querySelector('input').focus();
  });
  var sort = q('[data-sort]');
  if (sort) {
    var cur = new URLSearchParams(location.search).get('sort_by');
    Array.prototype.forEach.call(sort.options, function (o) { if (o.value === '?sort_by=' + cur) o.selected = true; });
  }
});
