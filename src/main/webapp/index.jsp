
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FreshBasket | Online Grocery Store</title>

<style>
:root {
  --green: #218838;
  --dark-green: #14532d;
  --light-green: #eaf7e9;
  --orange: #ff9f1c;
  --cream: #f8fbf5;
  --text: #25352a;
  --muted: #718071;
  --white: #ffffff;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html { scroll-behavior: smooth; }

body {
  font-family: Arial, Helvetica, sans-serif;
  color: var(--text);
  background: var(--cream);
  line-height: 1.6;
}

button, input, select {
  font: inherit;
}

button { cursor: pointer; }

.promo {
  background: var(--dark-green);
  color: white;
  padding: 8px;
  text-align: center;
  font-size: 13px;
}

header {
  background: white;
  padding: 16px 6%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 20px;
  flex-wrap: wrap;
  border-bottom: 1px solid #e3eadf;
}

.logo {
  color: var(--green);
  font-size: 28px;
  font-weight: 800;
  letter-spacing: -1px;
}

.logo span { color: var(--orange); }

.logo small {
  display: block;
  font-size: 10px;
  color: var(--muted);
  letter-spacing: 2px;
}

nav {
  display: flex;
  gap: 22px;
  flex-wrap: wrap;
}

nav a {
  color: var(--text);
  text-decoration: none;
  font-weight: 600;
  font-size: 14px;
}

nav a:hover { color: var(--green); }

.cart-button, .green-button {
  border: none;
  border-radius: 7px;
  background: var(--green);
  color: white;
  padding: 11px 18px;
  font-weight: bold;
}

.cart-button:hover, .green-button:hover {
  background: var(--dark-green);
}

.hero {
  margin: 25px 6%;
  padding: 55px 6%;
  min-height: 340px;
  border-radius: 18px;
  display: flex;
  align-items: center;
  color: white;
  background:
    linear-gradient(90deg, rgba(13, 55, 26, .92), rgba(13, 55, 26, .25)),
    url("https://images.unsplash.com/photo-1542838132-92c53300491e?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content { max-width: 530px; }

.eyebrow {
  color: #ffe3a5;
  font-size: 12px;
  letter-spacing: 2px;
  font-weight: bold;
  text-transform: uppercase;
}

.hero h1 {
  font-size: clamp(35px, 5vw, 54px);
  line-height: 1.15;
  margin: 12px 0;
}

.hero p {
  margin-bottom: 23px;
  max-width: 430px;
}

.orange-button {
  background: var(--orange);
  border: none;
  padding: 13px 22px;
  border-radius: 6px;
  color: #30230f;
  font-weight: bold;
}

.section { padding: 42px 6%; }

.heading {
  text-align: center;
  margin-bottom: 27px;
}

.heading h2 {
  font-size: 30px;
  color: var(--dark-green);
}

.heading p { color: var(--muted); }

.categories {
  display: grid;
  grid-template-columns: repeat(6, minmax(0, 1fr));
  gap: 16px;
}

.category {
  border: 1px solid #e3eadf;
  background: white;
  padding: 12px;
  border-radius: 12px;
  text-align: center;
  cursor: pointer;
  transition: .2s;
}

.category:hover {
  transform: translateY(-4px);
  border-color: var(--green);
}

.category img {
  width: 100%;
  height: 105px;
  object-fit: cover;
  border-radius: 8px;
}

.category h3 {
  font-size: 14px;
  margin-top: 8px;
}

.shop {
  background: #f0f6ec;
}

.shop-tools {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  margin-bottom: 25px;
}

.shop-tools input, .shop-tools select {
  border: 1px solid #d6e0d1;
  border-radius: 7px;
  padding: 12px;
  background: white;
  min-width: 180px;
}

.shop-tools input { flex: 1; }

.products {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 20px;
}

.product {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  border: 1px solid #e6ece2;
  transition: .2s;
}

.product:hover {
  transform: translateY(-4px);
  box-shadow: 0 8px 22px #163d1714;
}

.image-wrap { position: relative; }

.product img {
  width: 100%;
  height: 205px;
  object-fit: cover;
  display: block;
  background: #e5eee0;
}

.product-badge {
  position: absolute;
  top: 10px;
  left: 10px;
  background: #fff0ce;
  color: #8c5510;
  font-size: 11px;
  padding: 4px 9px;
  border-radius: 5px;
  font-weight: bold;
}

.product-info { padding: 14px; }

.product h3 {
  font-size: 16px;
  margin: 3px 0;
}

.unit {
  color: var(--muted);
  font-size: 12px;
}

.rating {
  color: #d58a08;
  font-size: 12px;
  margin: 5px 0;
}

.price {
  font-size: 19px;
  font-weight: bold;
  color: var(--dark-green);
  margin: 7px 0 12px;
}

.old-price {
  color: #90998d;
  font-size: 12px;
  text-decoration: line-through;
  font-weight: normal;
  margin-left: 5px;
}

.add-button {
  width: 100%;
  border: 1px solid var(--green);
  background: white;
  color: var(--green);
  border-radius: 6px;
  padding: 9px;
  font-weight: bold;
}

.add-button:hover {
  background: var(--green);
  color: white;
}

.no-results {
  grid-column: 1 / -1;
  text-align: center;
  padding: 30px;
  background: white;
  border-radius: 10px;
}

.benefits {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}

.benefit {
  background: white;
  padding: 24px;
  border: 1px solid #e3eadf;
  border-radius: 12px;
  text-align: center;
}

.benefit .icon { font-size: 35px; }

.benefit h3 {
  color: var(--dark-green);
  margin: 8px 0;
}

.benefit p {
  color: var(--muted);
  font-size: 14px;
}

.newsletter {
  margin: 10px 6% 40px;
  padding: 30px;
  background: var(--light-green);
  border-radius: 12px;
  text-align: center;
}

.newsletter h2 { color: var(--dark-green); }

footer {
  background: #153b24;
  color: white;
  padding: 35px 6%;
  text-align: center;
}

footer h2 {
  color: #b5e5a6;
  font-size: 26px;
}

footer p {
  color: #d8e5d5;
  font-size: 13px;
  margin-top: 7px;
}

.notice {
  position: fixed;
  bottom: 20px;
  right: 20px;
  padding: 14px 20px;
  background: var(--dark-green);
  color: white;
  border-radius: 8px;
  display: none;
  z-index: 10;
  box-shadow: 0 5px 20px #0002;
  max-width: 90%;
}

.cart-panel {
  position: fixed;
  z-index: 20;
  inset: 0 0 0 auto;
  width: min(420px, 100%);
  background: white;
  box-shadow: -5px 0 25px #0002;
  padding: 22px;
  display: none;
  overflow-y: auto;
}

.cart-panel.open { display: block; }

.cart-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 20px;
}

.close-button {
  border: none;
  background: #eef4ea;
  border-radius: 6px;
  padding: 7px 12px;
}

.cart-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 10px;
  padding: 14px 0;
  border-bottom: 1px solid #e8eee5;
}

.cart-item h4 { font-size: 14px; }

.cart-item small { color: var(--muted); }

.qty-controls {
  display: flex;
  align-items: center;
  gap: 9px;
}

.qty-controls button {
  border: 1px solid #d7e2d2;
  background: #f5f9f2;
  border-radius: 4px;
  padding: 2px 9px;
}

.cart-total {
  font-size: 20px;
  font-weight: bold;
  margin: 20px 0;
}

.checkout {
  width: 100%;
  padding: 13px;
  background: var(--orange);
  border: none;
  border-radius: 7px;
  font-weight: bold;
}

.empty-cart {
  color: var(--muted);
  padding: 25px 0;
  text-align: center;
}

@media(max-width: 1000px) {
  .categories { grid-template-columns: repeat(3, minmax(0, 1fr)); }
  .products { grid-template-columns: repeat(3, minmax(0, 1fr)); }
}

@media(max-width: 700px) {
  header { justify-content: center; }
  nav { justify-content: center; }
  .hero { margin: 15px; padding: 35px 25px; }
  .products { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .benefits { grid-template-columns: 1fr; }
  .section { padding: 32px 4%; }
}

@media(max-width: 430px) {
  .categories { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .products { gap: 10px; }
  .product img { height: 150px; }
  .product-info { padding: 10px; }
  .product h3 { font-size: 14px; }
  .price { font-size: 16px; }
  .shop-tools input, .shop-tools select { width: 100%; }
  .heading h2 { font-size: 25px; }
}
</style>
</head>

<body>

<div class="promo">
  FRESHNESS AT YOUR DOORSTEP | FREE DELIVERY ON ORDERS ABOVE ₹499
</div>

<header>
  <div class="logo">
    Fresh<span>Basket</span>
    <small>FRESH FOOD • HAPPY HOME</small>
  </div>

  <nav>
    <a href="#home">Home</a>
    <a href="#categories">Categories</a>
    <a href="#shop">Shop</a>
    <a href="#benefits">Why Us?</a>
  </nav>

  <button class="cart-button" onclick="showCart()">
    🛒 Cart (<span id="cart-count">0</span>)
  </button>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">Fresh Every Day 🌿</div>
    <h1>Good Food.<br>Good Mood.</h1>
    <p>
      Bring home farm-fresh vegetables, juicy fruits,
      everyday groceries and household essentials
      at prices your family will love.
    </p>
    <button class="orange-button"
      onclick="document.getElementById('shop').scrollIntoView({behavior:'smooth'})">
      Shop Groceries →
    </button>
  </div>
</section>

<section class="section" id="categories">
  <div class="heading">
    <h2>Shop by Category</h2>
    <p>Everything your kitchen needs, all in one place.</p>
  </div>

  <div class="categories">
    <div class="category" onclick="chooseCategory('Vegetables')">
      <img src="https://images.unsplash.com/photo-1540420773420-3366772f4999?auto=format&fit=crop&w=400&q=80" alt="Fresh vegetables">
      <h3>🥦 Vegetables</h3>
    </div>

    <div class="category" onclick="chooseCategory('Fruits')">
      <img src="https://images.unsplash.com/photo-1619566636858-adf3ef46400b?auto=format&fit=crop&w=400&q=80" alt="Fresh fruits">
      <h3>🍎 Fruits</h3>
    </div>

    <div class="category" onclick="chooseCategory('Dairy')">
      <img src="https://images.unsplash.com/photo-1563636619-e9143da7973b?auto=format&fit=crop&w=400&q=80" alt="Milk and dairy">
      <h3>🥛 Dairy</h3>
    </div>

    <div class="category" onclick="chooseCategory('Staples')">
      <img src="https://images.unsplash.com/photo-1586201375761-83865001e31c?auto=format&fit=crop&w=400&q=80" alt="Rice and grains">
      <h3>🌾 Staples</h3>
    </div>

    <div class="category" onclick="chooseCategory('Snacks')">
      <img src="https://images.unsplash.com/photo-1599490659213-e2b9527bd087?auto=format&fit=crop&w=400&q=80" alt="Snacks">
      <h3>🍪 Snacks</h3>
    </div>

    <div class="category" onclick="chooseCategory('Beverages')">
      <img src="https://images.unsplash.com/photo-1544145945-f90425340c7e?auto=format&fit=crop&w=400&q=80" alt="Refreshing beverages">
      <h3>🥤 Drinks</h3>
    </div>
  </div>
</section>

<section class="section shop" id="shop">
  <div class="heading">
    <h2>Fresh Picks for You</h2>
    <p>Quality groceries at everyday prices.</p>
  </div>

  <div class="shop-tools">
    <input type="search" id="search"
      placeholder="🔍 Search groceries..."
      aria-label="Search groceries"
      oninput="renderProducts()">

    <select id="category-filter" onchange="renderProducts()"
      aria-label="Filter category">
      <option value="All">All Categories</option>
      <option value="Vegetables">Vegetables</option>
      <option value="Fruits">Fruits</option>
      <option value="Dairy">Dairy</option>
      <option value="Staples">Staples</option>
      <option value="Snacks">Snacks</option>
      <option value="Beverages">Beverages</option>
    </select>

    <select id="sort" onchange="renderProducts()" aria-label="Sort products">
      <option value="default">Featured</option>
      <option value="low">Price: Low to High</option>
      <option value="high">Price: High to Low</option>
    </select>
  </div>

  <div class="products" id="products"></div>
</section>

<section class="section" id="benefits">
  <div class="heading">
    <h2>Why Shop With FreshBasket?</h2>
    <p>We make everyday grocery shopping simple.</p>
  </div>

  <div class="benefits">
    <div class="benefit">
      <div class="icon">🥬</div>
      <h3>Fresh Quality</h3>
      <p>Fresh-looking produce and everyday essentials in one convenient shop.</p>
    </div>

    <div class="benefit">
      <div class="icon">💰</div>
      <h3>Budget Friendly</h3>
      <p>Clear prices and a range of products for your daily shopping needs.</p>
    </div>

    <div class="benefit">
      <div class="icon">🚚</div>
      <h3>Easy Shopping</h3>
      <p>Browse products, manage your cart and review your order total.</p>
    </div>
  </div>
</section>

<section class="newsletter">
  <h2>Your Kitchen Deserves the Freshest!</h2>
  <p>Explore everyday essentials and make grocery shopping easier.</p>
  <br>
  <button class="green-button"
    onclick="document.getElementById('shop').scrollIntoView({behavior:'smooth'})">
    Start Shopping
  </button>
</section>

<footer>
  <h2>FreshBasket 🛒</h2>
  <p>Your neighborhood grocery store, right at your fingertips.</p>
  <p>Home | Categories | Shop | Contact</p>
  <p>© 2026 FreshBasket. Demo e-commerce application.</p>
  <p>Product images and prices are illustrative demo content.</p>
</footer>

<div class="notice" id="notice" role="status"></div>

<aside class="cart-panel" id="cart-panel" aria-label="Shopping cart">
  <div class="cart-header">
    <h2>🛒 Your Cart</h2>
    <button class="close-button" onclick="closeCart()">✕ Close</button>
  </div>

  <div id="cart-items"></div>

  <div class="cart-total" id="cart-total">Total: ₹0</div>

  <p style="font-size:12px;color:#718071;margin-bottom:15px">
    Delivery charges and payment are not connected in this demo.
  </p>

  <button class="checkout" onclick="checkout()">
    Proceed to Checkout →
  </button>
</aside>

<script>
const products = [
  {
    id: 1, name: "Fresh Tomatoes", category: "Vegetables",
    price: 35, old: 45, unit: "500 g", rating: "4.7",
    image: "photo-1546094096-0df4bcaaa337", badge: "Fresh Pick"
  },
  {
    id: 2, name: "Green Broccoli", category: "Vegetables",
    price: 65, old: 80, unit: "1 piece", rating: "4.6",
    image: "photo-1459411621453-7b03977f4bfc", badge: "Popular"
  },
  {
    id: 3, name: "Fresh Red Apples", category: "Fruits",
    price: 120, old: 150, unit: "1 kg", rating: "4.8",
    image: "photo-1560806887-1e4cd0b6cbd6", badge: "Best Seller"
  },
  {
    id: 4, name: "Sweet Bananas", category: "Fruits",
    price: 50, old: 60, unit: "1 dozen", rating: "4.7",
    image: "photo-1571771894821-ce9b6c11b08e", badge: "Value Pack"
  },
  {
    id: 5, name: "Fresh Milk", category: "Dairy",
    price: 32, old: 36, unit: "500 ml", rating: "4.8",
    image: "photo-1563636619-e9143da7973b", badge: "Daily Essential"
  },
  {
    id: 6, name: "Farm Fresh Eggs", category: "Dairy",
    price: 75, old: 90, unit: "6 pieces", rating: "4.7",
    image: "photo-1506976785307-8732e854ad03", badge: "Popular"
  },
  {
    id: 7, name: "Premium Basmati Rice", category: "Staples",
    price: 110, old: 135, unit: "1 kg", rating: "4.9",
    image: "photo-1586201375761-83865001e31c", badge: "Top Rated"
  },
  {
    id: 8, name: "Whole Wheat Atta", category: "Staples",
    price: 55, old: 65, unit: "1 kg", rating: "4.6",
    image: "photo-1627485937980-221c88ac04f9", badge: "Daily Essential"
  },
  {
    id: 9, name: "Potato Chips", category: "Snacks",
    price: 20, old: 25, unit: "1 pack", rating: "4.5",
    image: "photo-1566478989037-eec170784d0b", badge: "Snack Time"
  },
  {
    id: 10, name: "Mixed Nuts", category: "Snacks",
    price: 150, old: 180, unit: "200 g", rating: "4.8",
    image: "photo-1505576399274-565b52d4ac71", badge: "Healthy Pick"
  },
  {
    id: 11, name: "Orange Juice", category: "Beverages",
    price: 90, old: 110, unit: "1 litre", rating: "4.6",
    image: "photo-1600271886742-f049cd451bba", badge: "Refreshing"
  },
  {
    id: 12, name: "Fresh Lemon Drink", category: "Beverages",
    price: 45, old: 55, unit: "500 ml", rating: "4.5",
    image: "photo-1513558161293-cdaf765edfd7", badge: "Cool Choice"
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
    .trim().toLowerCase();
  const category = document.getElementById("category-filter").value;
  const sort = document.getElementById("sort").value;

  let list = products.filter(p =>
    (p.name.toLowerCase().includes(search) ||
     p.category.toLowerCase().includes(search)) &&
    (category === "All" || p.category === category)
  );

  if (sort === "low") list.sort((a, b) => a.price - b.price);
  if (sort === "high") list.sort((a, b) => b.price - a.price);

  const container = document.getElementById("products");

  if (!list.length) {
    container.innerHTML =
      '<div class="no-results">No products found. Try another search.</div>';
    return;
  }

  container.innerHTML = list.map(p => `
    <article class="product">
      <div class="image-wrap">
        <img
          src="https://images.unsplash.com/${p.image}?auto=format&fit=crop&w=600&q=80"
          alt="${p.name}"
          loading="lazy"
          onerror="this.onerror=null;this.src='https://placehold.co/500x400/eaf7e9/218838?text=FreshBasket'">
        <span class="product-badge">${p.badge}</span>
      </div>
      <div class="product-info">
        <h3>${p.name}</h3>
        <div class="unit">${p.unit}</div>
        <div class="rating">★ ${p.rating} <span style="color:#718071">(Demo rating)</span></div>
        <div class="price">
          ${money(p.price)}
          <span class="old-price">${money(p.old)}</span>
        </div>
        <button class="add-button" onclick="addToCart(${p.id})">
          + Add to Cart
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
  const existing = cart.find(item => item.id === id);

  if (existing) {
    existing.quantity++;
  } else {
    cart.push({...product, quantity: 1});
  }

  updateCart();
  showNotice(product.name + " added to your cart!");
}

function updateCart() {
  const count = cart.reduce((sum, item) => sum + item.quantity, 0);
  document.getElementById("cart-count").textContent = count;

  const container = document.getElementById("cart-items");

  if (!cart.length) {
    container.innerHTML = '<div class="empty-cart">Your cart is empty.<br>Start adding fresh groceries!</div>';
  } else {
    container.innerHTML = cart.map(item => `
      <div class="cart-item">
        <div>
          <h4>${item.name}</h4>
          <small>${money(item.price)} × ${item.quantity}</small>
          <div><strong>${money(item.price * item.quantity)}</strong></div>
        </div>
        <div class="qty-controls">
          <button onclick="changeQuantity(${item.id}, -1)" aria-label="Decrease quantity">−</button>
          <span>${item.quantity}</span>
          <button onclick="changeQuantity(${item.id}, 1)" aria-label="Increase quantity">+</button>
        </div>
      </div>
    `).join("");
  }

  const total = cart.reduce((sum, item) =>
    sum + item.price * item.quantity, 0);

  document.getElementById("cart-total").textContent =
    "Total: " + money(total);
}

function changeQuantity(id, amount) {
  const item = cart.find(p => p.id === id);
  if (!item) return;

  item.quantity += amount;

  if (item.quantity <= 0) {
    cart = cart.filter(p => p.id !== id);
  }

  updateCart();
}

function showCart() {
  updateCart();
  document.getElementById("cart-panel").classList.add("open");
}

function closeCart() {
  document.getElementById("cart-panel").classList.remove("open");
}

function showNotice(message) {
  const notice = document.getElementById("notice");
  notice.textContent = message;
  notice.style.display = "block";

  clearTimeout(window.noticeTimeout);
  window.noticeTimeout = setTimeout(() => {
    notice.style.display = "none";
  }, 2500);
}

function checkout() {
  if (!cart.length) {
    showNotice("Your cart is empty. Add some groceries first.");
    return;
  }

  const total = cart.reduce((sum, item) =>
    sum + item.price * item.quantity, 0);

  alert(
    "FRESHBASKET ORDER SUMMARY\n\n" +
    cart.map(item =>
      item.name + " × " + item.quantity + " — " +
      money(item.price * item.quantity)
    ).join("\n") +
    "\n\nOrder Total: " + money(total) +
    "\n\nThis is a demo checkout. No payment or order has been placed."
  );
}

const originalAddToCart = addToCart;

function addToCart(id) {
  const product = products.find(p => p.id === id);
  const existing = cart.find(item => item.id === id);

  if (existing) existing.quantity++;
  else cart.push({...product, quantity: 1});

  updateCart();
  showNotice(product.name + " added to your cart!");
}

renderProducts();
updateCart();
</script>

</body>
</html>
