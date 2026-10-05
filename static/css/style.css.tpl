:root{--primary:{{ settings.primary_color }};--accent:{{ settings.accent_color }};--bg:{{ settings.background_color }};--text:{{ settings.text_color }}}
*{box-sizing:border-box}body{margin:0;font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--text)}
a{color:inherit;text-decoration:none}img{max-width:100%;display:block}
.container{max-width:1200px;margin:0 auto;padding:0 16px}.section{padding:40px 16px}.narrow{max-width:760px}.center{text-align:center}
.announcement{background:var(--primary);color:#fff;text-align:center;padding:8px;font-size:13px}
.header{border-bottom:1px solid #eee;position:sticky;top:0;background:var(--bg);z-index:10}
.header-inner{display:flex;align-items:center;gap:20px;height:64px}
.logo{font-weight:800;font-size:22px;letter-spacing:-.5px}.logo img{max-height:44px}
.nav{display:flex;gap:18px;flex:1}.nav a:hover{color:var(--accent)}
.search input{padding:8px 12px;border:1px solid #ddd;border-radius:999px}
.menu-toggle{display:none;background:none;border:0;font-size:22px}
.hero{background:var(--primary) center/cover;color:#fff;padding:120px 0;text-align:center}
.hero h1{font-size:clamp(32px,6vw,64px);margin:0 0 12px;font-weight:800}
.btn{display:inline-block;background:var(--primary);color:#fff;padding:12px 28px;border:0;border-radius:4px;font-weight:600;cursor:pointer}
.hero .btn{background:var(--accent)}.btn.accent{background:var(--accent)}.btn[disabled]{opacity:.5}
.grid{display:grid;gap:20px}.cols-2{grid-template-columns:repeat(2,1fr)}.cols-3{grid-template-columns:repeat(3,1fr)}.cols-4{grid-template-columns:repeat(4,1fr)}
.product-img{position:relative;aspect-ratio:3/4;background:#f3f3f3;overflow:hidden}.product-img img{width:100%;height:100%;object-fit:cover}
.badge{position:absolute;top:8px;left:8px;background:var(--accent);color:#fff;font-size:11px;padding:3px 8px;font-weight:700}
.product-card h3{font-size:15px;margin:10px 0 4px;font-weight:600}.price s{color:#999;margin-right:6px}
.product-page{display:grid;grid-template-columns:1.2fr 1fr;gap:40px}.product-gallery{display:grid;gap:12px}
.product-info form{display:grid;gap:12px;margin:20px 0}.product-info select,.product-info input[type=number]{padding:10px;border:1px solid #ddd}
.price.big{font-size:26px}
.cart-row{display:grid;grid-template-columns:80px 1fr 80px 100px;gap:16px;align-items:center;padding:12px 0;border-bottom:1px solid #eee}
.cart-total{text-align:right;font-size:20px}
.footer{background:var(--primary);color:#ddd;margin-top:60px;padding-top:40px}
.footer-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:30px}.footer a{display:block;margin:6px 0}
.copyright{padding:24px 16px;font-size:13px;opacity:.7}
@media(max-width:800px){.cols-3,.cols-4{grid-template-columns:repeat(2,1fr)}.product-page,.footer-grid{grid-template-columns:1fr}
.menu-toggle{display:block}.nav{display:none;position:absolute;top:64px;left:0;right:0;background:var(--bg);flex-direction:column;padding:16px}.nav.open{display:flex}.search{display:none}}
