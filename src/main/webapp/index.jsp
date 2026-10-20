
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Label Akhila | Traditional Telugu Wear</title>

<style>
:root {
  --maroon: #70202d;
  --red: #9d3440;
  --gold: #c79b45;
  --cream: #fff9ef;
  --green: #465a3d;
  --text: #382821;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "Segoe UI", Arial, sans-serif;
  color: var(--text);
  background: var(--cream);
  line-height: 1.6;
}

button, input, select {
  font: inherit;
}

button {
  cursor: pointer;
}

.top-strip {
  background: var(--maroon);
  color: #fff4d6;
  text-align: center;
  padding: 8px;
  font-size: 13px;
  letter-spacing: 1px;
}

header {
  background: #fffdf8;
  padding: 16px 6%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 20px;
  flex-wrap: wrap;
  border-bottom: 1px solid #eadcc5;
}

.brand {
  color: var(--maroon);
  font-family: Georgia, serif;
  font-size: 29px;
  font-weight: bold;
}

.brand span {
  display: block;
  color: #96713b;
  font-family: Arial, sans-serif;
  font-size: 10px;
  letter-spacing: 3px;
  text-align: center;
}

nav {
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
}

nav a {
  text-decoration: none;
  color: var(--text);
  font-size: 14px;
  font-weight: 600;
}

nav a:hover {
  color: var(--red);
}

.cart-button, .primary-button {
  background: var(--maroon);
  color: white;
  border: none;
  border-radius: 5px;
  padding: 11px 18px;
}

.cart-button:hover, .primary-button:hover {
  background: var(--red);
}

.hero {
  min-height: 470px;
  display: flex;
  align-items: center;
  padding: 60px 8%;
  color: white;
  background:
    linear-gradient(90deg,
      rgba(40, 22, 15, .83),
      rgba(40, 22, 15, .35)),
    url("https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?auto=format&fit=crop&w=1800&q=85")
    center/cover;
}

.hero-content {
  max-width: 580px;
}

.eyebrow {
  color: #f4d38c;
  text-transform: uppercase;
  letter-spacing: 3px;
  font-size: 12px;
  font-weight: bold;
}

.hero h1 {
  font-family: Georgia, serif;
  font-size: clamp(36px, 5vw, 60px);
  line-height: 1.15;
  margin: 16px 0;
}

.hero p {
  font-size: 16px;
  max-width: 470px;
  margin-bottom: 24px;
  color: #fff6e9;
}

.gold-button {
  background: var(--gold);
  color: #2e2116;
  padding: 13px 24px;
  border: none;
  border-radius: 4px;
  font-weight: bold;
}

.section {
  padding: 55px 6%;
}

.section-heading {
  text-align: center;
  margin-bottom: 30px;
}

.section-heading .eyebrow {
  color: #a47b36;
}

.section-heading h2 {
  font: bold 34px Georgia, serif;
  color: var(--maroon);
  margin: 5px 0;
}

.section-heading p {
  color: #77685d;
}

.categories {
  display: grid;
  grid-template-columns: repeat(5, minmax(0, 1fr));
  gap: 18px;
}

.category {
  text-align: center;
  background: #fff;
  padding: 12px;
  border: 1px solid #eee0cb;
  border-radius: 10px;
  cursor: pointer;
  transition: .2s;
}

.category:hover {
  transform: translateY(-4px);
  border-color: var(--gold);
}

.category img {
  width: 100%;
  height: 145px;
  object-fit: cover;
  border-radius: 7px;
}

.category h3 {
  font: bold 17px Georgia, serif;
  color: var(--maroon);
  margin-top: 9px;
}

.shop-section {
  background: #f5ecdd;
}

.shop-tools {
  display: flex;
  justify-content: space-between;
  gap: 12px;
  margin-bottom: 25px;
  flex-wrap: wrap;
}

.shop-tools input, .shop-tools select {
  background: white;
  border: 1px solid #d8c6ac;
  border-radius: 5px;
  padding: 12px;
  min-width: 200px;
}

.shop-tools input {
  flex: 1;
}

.products {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 22px;
}

.product {
  background: white;
  border-radius: 9px;
  overflow: hidden;
  box-shadow: 0 3px 12px #5a34200d;
  transition: .2s;
}

.product:hover {
  transform: translateY(-4px);
  box-shadow: 0 9px 22px #5a34201b;
}

.product img {
  width: 100%;
  height: 265px;
  object-fit: cover;
  background: #eadfce;
}

.product-info {
  padding: 15px;
}

.tag {
  color: #826331;
  font-size: 11px;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.product h3 {
  font: bold 18px Georgia, serif;
  margin: 4px 0;
  color: var(--maroon);
}

.rating {
  color: #b17b20;
  font-size: 13px;
}

.price {
  font-size: 20px;
  font-weight: bold;
  margin: 7px 0 12px;
}

.old-price {
  font-size: 13px;
  font-weight: normal;
  color: #8c8178;
  text-decoration: line-through;
  margin-left: 5px;
}

.add-button {
  width: 100%;
  background: white;
  border: 1px solid var(--maroon);
  color: var(--maroon);
  border-radius: 4px;
  padding: 10px;
  font-weight: bold;
}

.add-button:hover {
  background: var(--maroon);
  color: white;
}

.no-results {
  grid-column: 1 / -1;
  text-align: center;
  padding: 30px;
}

.craft-banner {
  background: var(--green);
  color: white;
  text-align: center;
  padding: 48px 8%;
}

.craft-banner h2 {
  font: bold 32px Georgia, serif;
  margin-bottom: 10px;
}

.craft-banner p {
  max-width: 650px;
  margin: auto;
  color: #f2ead8;
}

.benefits {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 25px;
  margin-top: 25px;
}

.benefit {
  background: #fffdf8;
  padding: 22px;
  border-radius: 8px;
  border: 1px solid #eddfc8;
}

.benefit .symbol {
  font-size: 28px;
}

.benefit h3 {
  color: var(--maroon);
  margin: 5px 0;
}

footer {
  background: #351d1b;
  color: #fff1df;
  text-align: center;
  padding: 35px 15px;
}

footer h2 {
  font: bold 27px Georgia, serif;
  color: #e5c17d;
}

footer p {
  font-size: 13px;
  margin-top: 7px;
}

.cart-notice {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background: var(--green);
  color: white;
  padding: 14px 22px;
  border-radius: 6px;
  box-shadow: 0 5px 20px #0002;
  display: none;
  z-index: 5;
}

@media(max-width: 950px) {
  .products { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .categories { grid-template-columns: repeat(3, minmax(0, 1fr)); }
  header { justify-content: center; }
}

@media(max-width: 560px) {
  header { padding: 15px; }
  nav { justify-content: center; gap: 13px; }
  .hero { min-height: 400px; padding: 40px 7%; }
  .categories { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .products { gap: 12px; }
  .product img { height: 190px; }
  .product-info { padding: 10px; }
  .product h3 { font-size: 16px; }
  .price { font-size: 17px; }
  .section { padding: 38px 4%; }
  .benefits { grid-template-columns: 1fr; }
  .shop-tools input, .shop-tools select { width: 100%; }
}
</style>
</head>

<body>

<div class="top-strip">
  CELEBRATE YOUR ROOTS • TRADITIONAL WEAR FOR EVERY OCCASION
</div>

<header>
  <div class="brand">
    Label Akhila
    <span>ETHNIC • ELEGANT • TIMELESS</span>
  </div>

  <nav>
    <a href="#home">Home</a>
    <a href="#categories">Collections</a>
    <a href="#shop">Shop</a>
    <a href="#story">Our Story</a>
  </nav>

  <button class="cart-button" onclick="showCart()">
    🛍 Cart (<span id="cart-count">0</span>)
  </button>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">మన సంప్రదాయం • Our Heritage</div>
    <h1>Tradition Looks Beautiful on You.</h1>
    <p>
      From graceful sarees to dreamy half sarees,
      discover the beauty of Telugu traditions with
      outfits made for your special moments.
    </p>
    <button class="gold-button"
      onclick="document.getElementById('shop').scrollIntoView({behavior:'smooth'})">
      Explore Collection →
    </button>
  </div>
</section>

<section class="section" id="categories">
  <div class="section-heading">
    <div class="eyebrow">Find Your Style</div>
    <h2>Our Traditional Collections</h2>
    <p>A beautiful outfit for every celebration.</p>
  </div>

  <div class="categories">
    <div class="category" onclick="chooseCategory('Saree')">
      <img src="https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=500&q=80" alt="Traditional saree">
      <h3>Sarees</h3>
    </div>

    <div class="category" onclick="chooseCategory('Half Saree')">
      <img src="https://images.unsplash.com/photo-1583391733956-6c78276477e8?auto=format&fit=crop&w=500&q=80" alt="Ethnic festive outfit">
      <h3>Half Sarees</h3>
    </div>

    <div class="category" onclick="chooseCategory('Lehenga')">
      <img src="https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=500&q=80" alt="Festive fashion">
      <h3>Lehengas</h3>
    </div>

    <div class="category" onclick="chooseCategory('Anarkali')">
      <img src="https://images.unsplash.com/photo-1617627143750-d86bc21e42bb?auto=format&fit=crop&w=500&q=80" alt="Elegant ethnic wear">
      <h3>Anarkalis</h3>
    </div>

    <div class="category" onclick="chooseCategory('Festive')">
      <img src="https://images.unsplash.com/photo-1609357605129-26f69add5d6e?auto=format&fit=crop&w=500&q=80" alt="Traditional festive fashion">
      <h3>Festive Wear</h3>
    </div>
  </div>
</section>

<section class="section shop-section" id="shop">
  <div class="section-heading">
    <div class="eyebrow">Made for Your Moments</div>
    <h2>Shop Our Collection</h2>
    <p>Traditional beauty at prices you'll love.</p>
  </div>

  <div class="shop-tools">
    <input id="search" type="search"
      placeholder="Search sarees, lehengas..."
      oninput="renderProducts()"
      aria-label="Search products">

    <select id="category-filter" onchange="renderProducts()"
      aria-label="Filter by category">
      <option value="All">All Collections</option>
      <option value="Saree">Sarees</option>
      <option value="Half Saree">Half Sarees</option>
      <option value="Lehenga">Lehengas</option>
      <option value="Anarkali">Anarkalis</option>
      <option value="Festive">Festive Wear</option>
    </select>

    <select id="sort" onchange="renderProducts()"
      aria-label="Sort products">
      <option value="default">Sort: Featured</option>
      <option value="low">Price: Low to High</option>
      <option value="high">Price: High to Low</option>
    </select>
  </div>

  <div class="products" id="products"></div>
</section>

<section class="craft-banner" id="story">
  <div class="eyebrow">మన తెలుగు సంస్కృతి</div>
  <h2>Every Thread Tells a Story</h2>
  <p>
    Inspired by the colors of Telugu festivals, the beauty
    of handwoven fabrics, and the warmth of our village roots,
    Label Akhila brings traditional fashion closer to you.
    Celebrate Sankranti, Ugadi, weddings and every little moment
    in an outfit that feels special.
  </p>
</section>

<section class="section">
  <div class="section-heading">
    <div class="eyebrow">The Label Akhila Promise</div>
    <h2>Shopping Made Special</h2>
  </div>

  <div class="benefits">
    <div class="benefit">
      <div class="symbol">🌸</div>
      <h3>Ethnic Elegance</h3>
      <p>Traditional-inspired styles for celebrations and everyday beauty.</p>
    </div>
    <div class="benefit">
      <div class="symbol">💛</div>
      <h3>Budget Friendly</h3>
      <p>Beautiful styles across different budgets, with clear pricing.</p>
    </div>
    <div class="benefit">
      <div class="symbol">🎁</div>
      <h3>Made for Moments</h3>
      <p>Find outfits for family functions, festivals and weddings.</p>
    </div>
  </div>
</section>

<footer>
  <h2>Label Akhila</h2>
  <p>సంప్రదాయం మీ అందం • Tradition is your beauty.</p>
  <p>© 2026 Label Akhila. All rights reserved.</p>
  <p>Prices and product images are illustrative demo content.</p>
</footer>

<div class="cart-notice" id="notice" role="status"></div>

<script>
const products = [
  {
    id: 1,
    name: "Classic Banarasi Saree",
    category: "Saree",
    price: 1499,
    old: 1999,
    rating: "4.8",
    image: "photo-1610030469983-98e550d6193c"
  },
  {
    id: 2,
    name: "Festive Half Saree",
    category: "Half Saree",
    price: 2299,
    old: 2999,
    rating: "4.9",
    image: "photo-1583391733956-6c78276477e8"
  },
  {
    id: 3,
    name: "Royal Ethnic Lehenga",
    category: "Lehenga",
    price: 2499,
    old: 3299,
    rating: "4.7",
    image: "photo-1595777457583-95e059d581b8"
  },
  {
    id: 4,
    name: "Elegant Anarkali Suit",
    category: "Anarkali",
    price: 1299,
    old: 1699,
    rating: "4.6",
    image: "photo-1617627143750-d86bc21e42bb"
  },
  {
    id: 5,
    name: "Temple Border Saree",
    category: "Saree",
    price: 1799,
    old: 2299,
    rating: "4.8",
    image: "photo-1610030469983-98e550d6193c"
  },
  {
    id: 6,
    name: "Wedding Glow Lehenga",
    category: "Lehenga",
    price: 3499,
    old: 4299,
    rating: "4.9",
    image: "photo-1595777457583-95e059d581b8"
  },
  {
    id: 7,
    name: "Traditional Festive Set",
    category: "Festive",
    price: 1899,
    old: 2499,
    rating: "4.7",
    image: "photo-1609357605129-26f69add5d6e"
  },
  {
    id: 8,
    name: "Graceful Anarkali",
    category: "Anarkali",
    price: 1599,
    old: 1999,
    rating: "4.8",
    image: "photo-1617627143750-d86bc21e42bb"
  }
];

let cart = [];

function money(value) {
  return new Intl.NumberFormat("en-IN", {
    style: "currency",
    currency: "INR",
    maximumFractionDigits: 0
  }).format(value);
}

function renderProducts() {
  const search = document.getElementById("search").value
    .toLowerCase().trim();
  const category = document.getElementById("category-filter").value;
  const sort = document.getElementById("sort").value;

  let list = products.filter(p =>
    p.name.toLowerCase().includes(search) &&
    (category === "All" || p.category === category)
  );

  if (sort === "low") list.sort((a, b) => a.price - b.price);
  if (sort === "high") list.sort((a, b) => b.price - a.price);

  const container = document.getElementById("products");

  if (!list.length) {
    container.innerHTML =
      '<div class="no-results">No matching outfits found. Try another search.</div>';
    return;
  }

  container.innerHTML = list.map(p => `
    <article class="product">
      <img
        src="https://images.unsplash.com/${p.image}?auto=format&fit=crop&w=650&q=80"
        alt="${p.name}"
        loading="lazy"
        onerror="this.onerror=null;this.src='https://placehold.co/500x600/F5E8D6/70202D?text=Label+Akhila'">
      <div class="product-info">
        <div class="tag">${p.category}</div>
        <h3>${p.name}</h3>
        <div class="rating">★ ${p.rating} <span style="color:#887b70">Customer rating (demo)</span></div>
        <div class="price">
          ${money(p.price)}
          <span class="old-price">${money(p.old)}</span>
        </div>
        <button class="add-button" onclick="addToCart(${p.id})">
          Add to Cart +
        </button>
      </div>
    </article>
  `).join("");
}

function chooseCategory(category) {
  document.getElementById("category-filter").value = category;
  renderProducts();
  document.getElementById("shop").scrollIntoView({behavior: "smooth"});
}

function addToCart(id) {
  const product = products.find(p => p.id === id);
  cart.push(product);
  document.getElementById("cart-count").textContent = cart.length;
  const notice = document.getElementById("notice");
  notice.textContent = product.name + " added to cart!";
  notice.style.display = "block";
  clearTimeout(window.noticeTimeout);
  window.noticeTimeout = setTimeout(() => {
    notice.style.display = "none";
  }, 2500);
}

function showCart() {
  if (!cart.length) {
    alert("Your cart is empty. Explore our traditional collection!");
    return;
  }

  const total = cart.reduce((sum, p) => sum + p.price, 0);
  const items = cart.map(p => p.name + " — " + money(p.price)).join("\n");

  alert(
    "YOUR LABEL AKHILA CART\n\n" + items +
    "\n\nTotal: " + money(total) +
    "\n\nThis is a demo cart. Online checkout is not connected yet."
  );
}

renderProducts();
</script>

</body>
</html>
