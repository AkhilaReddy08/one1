
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Saffron & Spice | Restaurant</title>

<style>
:root {
  --red: #a9432e;
  --dark: #38271f;
  --gold: #d8a64e;
  --cream: #fffaf2;
  --muted: #786f65;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html { scroll-behavior: smooth; }

body {
  font-family: "Segoe UI", Arial, sans-serif;
  background: var(--cream);
  color: var(--dark);
  line-height: 1.6;
}

button, input, select { font: inherit; }
button { cursor: pointer; }
a { text-decoration: none; color: inherit; }

.announcement {
  text-align: center;
  padding: 9px;
  background: var(--dark);
  color: white;
  font-size: 12px;
  letter-spacing: 2px;
}

header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 18px 6%;
  background: white;
  flex-wrap: wrap;
  gap: 18px;
}

.logo {
  font: bold 27px Georgia, serif;
}

.logo span { color: var(--red); }

nav {
  display: flex;
  gap: 22px;
  flex-wrap: wrap;
}

nav a {
  font-size: 14px;
  font-weight: 600;
}

nav a:hover { color: var(--red); }

.btn {
  padding: 11px 17px;
  border: none;
  border-radius: 6px;
  font-weight: bold;
}

.primary {
  background: var(--red);
  color: white;
}

.primary:hover { background: var(--dark); }

.secondary {
  background: white;
  color: var(--dark);
  border: 1px solid #e7d8c8;
}

.hero {
  margin: 22px 3%;
  min-height: 480px;
  padding: 55px 7%;
  display: flex;
  align-items: center;
  border-radius: 15px;
  color: white;
  background:
    linear-gradient(90deg, #21130ee8, #21130e24),
    url("https://images.unsplash.com/photo-1414235077428-338989a2e8c0?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content { max-width: 600px; }

.eyebrow {
  color: var(--gold);
  font-size: 12px;
  font-weight: bold;
  letter-spacing: 3px;
  text-transform: uppercase;
}

.hero h1 {
  font: bold clamp(42px, 6vw, 68px)/1.1 Georgia, serif;
  margin: 18px 0;
}

.hero p {
  max-width: 470px;
  margin-bottom: 25px;
}

.hero-buttons {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.gold-button {
  background: var(--gold);
  color: var(--dark);
  border: 0;
  border-radius: 6px;
  padding: 13px 20px;
  font-weight: bold;
}

.section { padding: 60px 6%; }

.section-heading {
  text-align: center;
  margin-bottom: 30px;
}

.section-heading h2 {
  font: bold 36px Georgia, serif;
  margin: 7px 0;
}

.section-heading p {
  color: var(--muted);
  font-size: 14px;
}

.categories {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 18px;
}

.category {
  position: relative;
  height: 230px;
  border-radius: 12px;
  overflow: hidden;
  cursor: pointer;
  color: white;
  background: var(--dark);
}

.category img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: .3s;
}

.category:hover img { transform: scale(1.07); }

.category-info {
  position: absolute;
  inset: auto 15px 15px;
  z-index: 1;
  text-shadow: 0 2px 8px #000;
}

.category-info h3 { font: bold 24px Georgia, serif; }

.menu-section { background: #f4ebdf; }

.menu-tools {
  display: flex;
  gap: 12px;
  margin-bottom: 25px;
  flex-wrap: wrap;
}

.menu-tools input,
.menu-tools select {
  padding: 12px;
  border: 1px solid #dfd0bf;
  border-radius: 6px;
  background: white;
}

.menu-tools input { flex: 1; min-width: 180px; }

.menu-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 22px;
}

.food-card {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  transition: .2s;
}

.food-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 25px #38271f15;
}

.food-image {
  height: 215px;
  position: relative;
}

.food-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.tag {
  position: absolute;
  top: 12px;
  left: 12px;
  background: white;
  padding: 5px 9px;
  font-size: 10px;
  font-weight: bold;
  border-radius: 5px;
}

.food-info { padding: 17px; }

.food-title {
  display: flex;
  justify-content: space-between;
  gap: 8px;
}

.food-title h3 { font: bold 21px Georgia, serif; }

.price {
  color: var(--red);
  font-weight: bold;
  white-space: nowrap;
}

.rating {
  color: #a57525;
  font-size: 12px;
  margin: 8px 0;
}

.food-info p {
  color: var(--muted);
  font-size: 13px;
  min-height: 42px;
}

.food-bottom {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
  border-top: 1px solid #eee3d4;
  padding-top: 13px;
  margin-top: 13px;
}

.add-btn {
  background: var(--dark);
  color: white;
  border: none;
  border-radius: 5px;
  padding: 9px 12px;
  font-size: 12px;
  font-weight: bold;
}

.add-btn:hover { background: var(--red); }

.story {
  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;
  gap: 40px;
}

.story img {
  width: 100%;
  height: 380px;
  object-fit: cover;
  border-radius: 12px;
}

.story h2 {
  font: bold 38px/1.15 Georgia, serif;
  margin: 12px 0;
}

.story p {
  color: var(--muted);
  margin-bottom: 20px;
}

.stats {
  background: var(--dark);
  color: white;
  padding: 35px 6%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  text-align: center;
  gap: 20px;
}

.stats strong {
  display: block;
  color: var(--gold);
  font: bold 30px Georgia, serif;
}

.reservation {
  background: #f2e2ca;
  margin: 55px 6%;
  padding: 35px;
  border-radius: 13px;
}

.reservation h2 {
  font: bold 34px Georgia, serif;
  margin-bottom: 8px;
}

.reservation > p {
  color: var(--muted);
  margin-bottom: 20px;
}

.reserve-form {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 14px;
}

.reserve-form label {
  display: block;
  font-size: 12px;
  font-weight: bold;
  margin-bottom: 5px;
}

.reserve-form input,
.reserve-form select {
  width: 100%;
  padding: 12px;
  border: 1px solid #dfcfb9;
  border-radius: 6px;
  background: white;
}

.reserve-form button { grid-column: 1 / -1; }

footer {
  background: #261b16;
  color: white;
  padding: 35px 6%;
}

footer p {
  color: #d9ccc1;
  font-size: 13px;
}

.copyright {
  text-align: center;
  border-top: 1px solid #ffffff30;
  padding-top: 18px;
  margin-top: 25px;
  font-size: 12px;
  color: #d9ccc1;
}

.toast {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 20px;
  background: var(--dark);
  color: white;
  padding: 13px 20px;
  border-radius: 7px;
  z-index: 20;
}

.cart-panel {
  display: none;
  position: fixed;
  z-index: 15;
  inset: 0;
  background: #0009;
  align-items: center;
  justify-content: center;
  padding: 15px;
}

.cart-panel.open { display: flex; }

.cart-box {
  width: 100%;
  max-width: 480px;
  max-height: 85vh;
  overflow: auto;
  padding: 25px;
  border-radius: 12px;
  background: white;
}

.cart-row {
  display: flex;
  justify-content: space-between;
  gap: 12px;
  padding: 12px 0;
  border-bottom: 1px solid #eee3d4;
}

.cart-row button {
  border: none;
  background: none;
  color: var(--red);
  font-weight: bold;
}

@media(max-width:950px) {
  header { justify-content: center; }
  .categories { grid-template-columns: repeat(2, 1fr); }
  .menu-grid { grid-template-columns: repeat(2, 1fr); }
}

@media(max-width:650px) {
  nav { justify-content: center; gap: 12px; }
  .hero { margin: 12px; padding: 30px 22px; min-height: 400px; }
  .section { padding: 42px 5%; }
  .categories, .menu-grid, .story { grid-template-columns: 1fr; }
  .story img { height: 260px; }
  .stats { grid-template-columns: repeat(2, 1fr); }
  .reserve-form { grid-template-columns: 1fr; }
  .reserve-form button { grid-column: auto; }
  .reservation { margin: 30px 5%; padding: 22px; }
  .menu-tools input, .menu-tools select { width: 100%; }
}
</style>
</head>

<body>

<div class="announcement">
  FRESH FLAVOURS · WARM HOSPITALITY · MEMORABLE MOMENTS
</div>

<header>
  <a href="#home" class="logo">Saffron <span>& Spice.</span></a>

  <nav>
    <a href="#home">Home</a>
    <a href="#categories">Cuisine</a>
    <a href="#menu">Menu</a>
    <a href="#story">Our Story</a>
    <a href="#reservation">Reservations</a>
  </nav>

  <div>
    <button class="btn secondary" onclick="openCart()">
      🛒 Cart (<span id="cart-count">0</span>)
    </button>
    <button class="btn primary"
      onclick="document.getElementById('reservation').scrollIntoView({behavior:'smooth'})">
      Book a Table
    </button>
  </div>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">A little spice, a lot of soul</div>
    <h1>Gather around something delicious.</h1>
    <p>
      Discover comforting classics, authentic Indian flavours,
      and chef-inspired dishes made to bring people together.
    </p>
    <div class="hero-buttons">
      <button class="gold-button"
        onclick="document.getElementById('menu').scrollIntoView({behavior:'smooth'})">
        Explore Our Menu →
      </button>
      <button class="btn secondary"
        onclick="document.getElementById('reservation').scrollIntoView({behavior:'smooth'})">
        Reserve a Table
      </button>
    </div>
  </div>
</section>

<section class="section" id="categories">
  <div class="section-heading">
    <div class="eyebrow">Something for every craving</div>
    <h2>Explore Our Cuisine</h2>
    <p>Comfort food, bold flavours and a little something special.</p>
  </div>

  <div class="categories">
    <article class="category" onclick="chooseCategory('Starters')">
      <img src="https://images.unsplash.com/photo-1541529086526-db283c563270?auto=format&fit=crop&w=700&q=85" alt="Starters">
      <div class="category-info"><h3>Starters</h3><p>Small bites, big flavour</p></div>
    </article>

    <article class="category" onclick="chooseCategory('Main Course')">
      <img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?auto=format&fit=crop&w=700&q=85" alt="Indian food">
      <div class="category-info"><h3>Main Course</h3><p>Hearty meals to savour</p></div>
    </article>

    <article class="category" onclick="chooseCategory('Biryani')">
      <img src="https://images.unsplash.com/photo-1563379091339-03246963d96c?auto=format&fit=crop&w=700&q=85" alt="Biryani">
      <div class="category-info"><h3>Biryani</h3><p>Aromatic and satisfying</p></div>
    </article>

    <article class="category" onclick="chooseCategory('Desserts')">
      <img src="https://images.unsplash.com/photo-1551024506-0abba7eeec77?auto=format&fit=crop&w=700&q=85" alt="Desserts">
      <div class="category-info"><h3>Desserts</h3><p>Save room for sweetness</p></div>
    </article>
  </div>
</section>

<section class="section menu-section" id="menu">
  <div class="section-heading">
    <div class="eyebrow">Made with care</div>
    <h2>Our Guest Favourites</h2>
    <p>Choose your favourites and add them to your demo cart.</p>
  </div>

  <div class="menu-tools">
    <input id="search" type="search" placeholder="Search dishes..." oninput="renderMenu()">

    <select id="category-filter" onchange="renderMenu()">
      <option value="All">All Categories</option>
      <option>Starters</option>
      <option>Main Course</option>
      <option>Biryani</option>
      <option>Desserts</option>
      <option>Beverages</option>
    </select>

    <select id="diet-filter" onchange="renderMenu()">
      <option value="All">Veg & Non-Veg</option>
      <option value="Veg">Vegetarian</option>
      <option value="Non-Veg">Non-Vegetarian</option>
    </select>

    <select id="sort" onchange="renderMenu()">
      <option value="default">Recommended</option>
      <option value="low">Price: Low to High</option>
      <option value="high">Price: High to Low</option>
    </select>
  </div>

  <div class="menu-grid" id="menu-grid"></div>
</section>

<section class="section" id="story">
  <div class="story">
    <div>
      <img src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=1000&q=85" alt="Restaurant interior">
    </div>

    <div>
      <div class="eyebrow">Our Story</div>
      <h2>Food tastes better when it brings us together.</h2>
      <p>
        At Saffron & Spice, we believe a great meal is more than
        what's on the plate. It's the laughter around the table,
        familiar flavours and the joy of discovering something new.
      </p>
      <p>🥬 Fresh ingredients and freshly prepared meals</p>
      <p>👨‍🍳 Recipes made with care and passion</p>
      <p>🪔 A welcoming place for families and friends</p>
      <button class="btn primary"
        onclick="document.getElementById('reservation').scrollIntoView({behavior:'smooth'})">
        Come Dine With Us →
      </button>
    </div>
  </div>
</section>

<section class="stats">
  <div><strong>30+</strong><span>Menu Favourites</span></div>
  <div><strong>Fresh</strong><span>Ingredients</span></div>
  <div><strong>7 Days</strong><span>Open Every Week</span></div>
  <div><strong>Always</strong><span>Made with Care</span></div>
</section>

<section class="reservation" id="reservation">
  <div class="eyebrow">Your table is waiting</div>
  <h2>Make it a meal to remember.</h2>
  <p>Plan a family dinner, date night or celebration.</p>

  <form class="reserve-form" id="reservation-form">
    <div>
      <label for="guest-name">Full Name *</label>
      <input id="guest-name" required placeholder="Enter your name">
    </div>

    <div>
      <label for="guest-phone">Phone Number *</label>
      <input id="guest-phone" type="tel" required
        pattern="[0-9+() -]{8,18}" placeholder="+91 98765 43210">
    </div>

    <div>
      <label for="reserve-date">Reservation Date *</label>
      <input id="reserve-date" type="date" required>
    </div>

    <div>
      <label for="reserve-time">Time *</label>
      <select id="reserve-time" required>
        <option value="">Choose time</option>
        <option>12:00 PM</option>
        <option>1:00 PM</option>
        <option>2:00 PM</option>
        <option>6:00 PM</option>
        <option>7:00 PM</option>
        <option>8:00 PM</option>
        <option>9:00 PM</option>
      </select>
    </div>

    <div>
      <label for="guests">Number of Guests *</label>
      <select id="guests">
        <option>1 Guest</option>
        <option selected>2 Guests</option>
        <option>3 Guests</option>
        <option>4 Guests</option>
        <option>5 Guests</option>
        <option>6 Guests</option>
        <option>7+ Guests</option>
      </select>
    </div>

    <div>
      <label for="occasion">Occasion</label>
      <select id="occasion">
        <option>Regular Dining</option>
        <option>Birthday</option>
        <option>Anniversary</option>
        <option>Family Gathering</option>
        <option>Business Dinner</option>
      </select>
    </div>

    <button class="btn primary" type="submit">
      Confirm Demo Reservation
    </button>
  </form>
</section>

<footer>
  <h2>Saffron & Spice.</h2>
  <p>Good food, warm hospitality and memorable moments.</p>
  <p>📍 24 Spice Street, Hyderabad | ☎ +91 98765 43210</p>
  <div class="copyright">
    © 2026 Saffron & Spice. All rights reserved.
    <br>Demo website. No real orders or reservations are sent.
  </div>
</footer>

<div class="toast" id="toast" role="status"></div>

<div class="cart-panel" id="cart-panel" onclick="closeCartOutside(event)">
  <div class="cart-box">
    <h2>Your Food Cart</h2>
    <div id="cart-items"></div>
    <h3 id="cart-total" style="margin:15px 0"></h3>
    <button class="btn secondary" onclick="closeCart()">Continue Browsing</button>
    <button class="btn primary" onclick="checkout()">Place Demo Order</button>
  </div>
</div>

<script>
const dishes = [
  {id:1,name:"Paneer Tikka",category:"Starters",diet:"Veg",price:249,tag:"POPULAR",rating:"4.8",image:"photo-1567188040759-fb8a883dc6d8",desc:"Grilled paneer with peppers and aromatic spices."},
  {id:2,name:"Chicken 65",category:"Starters",diet:"Non-Veg",price:279,tag:"CHEF'S PICK",rating:"4.7",image:"photo-1604908176997-125f25cc6f3d",desc:"Crispy chicken tossed with spices and curry leaves."},
  {id:3,name:"Tandoori Mushroom",category:"Starters",diet:"Veg",price:229,tag:"VEG SPECIAL",rating:"4.6",image:"photo-1504545102780-26774c1bb073",desc:"Mushrooms with a smoky tandoori marinade."},
  {id:4,name:"Paneer Butter Masala",category:"Main Course",diet:"Veg",price:299,tag:"BEST SELLER",rating:"4.9",image:"photo-1631452180519-c014fe946bc7",desc:"Soft paneer in a creamy tomato butter gravy."},
  {id:5,name:"Andhra Chicken Curry",category:"Main Course",diet:"Non-Veg",price:329,tag:"SPICY FAVOURITE",rating:"4.8",image:"photo-1603894584373-5ac82b2ae398",desc:"A bold curry with warming regional spices."},
  {id:6,name:"Dal Tadka & Rice",category:"Main Course",diet:"Veg",price:229,tag:"COMFORT FOOD",rating:"4.6",image:"photo-1512621776951-a57141f2eefd",desc:"Homestyle dal served with fragrant rice."},
  {id:7,name:"Hyderabadi Chicken Biryani",category:"Biryani",diet:"Non-Veg",price:329,tag:"SIGNATURE",rating:"4.9",image:"photo-1563379091339-03246963d96c",desc:"Aromatic basmati rice layered with spiced chicken."},
  {id:8,name:"Veg Dum Biryani",category:"Biryani",diet:"Veg",price:249,tag:"VEG FAVOURITE",rating:"4.7",image:"photo-1589302168068-964664d93dc0",desc:"Dum-cooked basmati rice with vegetables and herbs."},
  {id:9,name:"Mutton Dum Biryani",category:"Biryani",diet:"Non-Veg",price:399,tag:"PREMIUM",rating:"4.8",image:"photo-1633945274405-b6c8069047b0",desc:"Slow-cooked mutton and aromatic basmati rice."},
  {id:10,name:"Gulab Jamun",category:"Desserts",diet:"Veg",price:99,tag:"SWEET CLASSIC",rating:"4.8",image:"photo-1666190092159-3e7b3b7e6b1d",desc:"Soft milk dumplings in cardamom sugar syrup."},
  {id:11,name:"Chocolate Brownie",category:"Desserts",diet:"Veg",price:149,tag:"CHOCOLATE",rating:"4.7",image:"photo-1606313564200-e75d5e30476c",desc:"A rich chocolate treat to finish your meal."},
  {id:12,name:"Mango Lassi",category:"Beverages",diet:"Veg",price:119,tag:"REFRESHING",rating:"4.6",image:"photo-1546173159-315724a31696",desc:"A refreshing yoghurt drink blended with mango."}
];

let cart = {};

function money(amount) {
  return new Intl.NumberFormat("en-IN", {
    style:"currency", currency:"INR", maximumFractionDigits:0
  }).format(amount);
}

function renderMenu() {
  const query = document.getElementById("search").value.toLowerCase().trim();
  const category = document.getElementById("category-filter").value;
  const diet = document.getElementById("diet-filter").value;
  const sort = document.getElementById("sort").value;

  let list = dishes.filter(d =>
    (d.name + " " + d.category + " " + d.desc).toLowerCase().includes(query) &&
    (category === "All" || d.category === category) &&
    (diet === "All" || d.diet === diet)
  );

  if (sort === "low") list.sort((a,b) => a.price - b.price);
  if (sort === "high") list.sort((a,b) => b.price - a.price);

  const grid = document.getElementById("menu-grid");

  if (!list.length) {
    grid.innerHTML = '<p>No dishes found. Try another search.</p>';
    return;
  }

  grid.innerHTML = list.map(d => `
    <article class="food-card">
      <div class="food-image">
        <img src="https://images.unsplash.com/${d.image}?auto=format&fit=crop&w=800&q=85"
          alt="${d.name}" loading="lazy"
          onerror="this.onerror=null;this.src='https://placehold.co/800x500/f4ebdf/38271f?text=Restaurant+Dish'">
        <span class="tag">${d.tag}</span>
      </div>
      <div class="food-info">
        <div class="food-title">
          <h3>${d.name}</h3>
          <span class="price">${money(d.price)}</span>
        </div>
        <div class="rating">★ ${d.rating} · ${d.diet}</div>
        <p>${d.desc}</p>
        <div class="food-bottom">
          <small>${d.category}</small>
          <button class="add-btn" onclick="addToCart(${d.id})">+ Add to Cart</button>
        </div>
      </div>
    </article>
  `).join("");
}

function chooseCategory(category) {
  document.getElementById("category-filter").value = category;
  renderMenu();
  document.getElementById("menu").scrollIntoView({behavior:"smooth"});
}

function addToCart(id) {
  cart[id] = (cart[id] || 0) + 1;
  document.getElementById("cart-count").textContent =
    Object.values(cart).reduce((sum, qty) => sum + qty, 0);
  showToast(dishes.find(d => d.id === id).name + " added to cart!");
}

function openCart() {
  renderCart();
  document.getElementById("cart-panel").classList.add("open");
}

function closeCart() {
  document.getElementById("cart-panel").classList.remove("open");
}

function closeCartOutside(event) {
  if (event.target.id === "cart-panel") closeCart();
}

function renderCart() {
  const items = document.getElementById("cart-items");
  const ids = Object.keys(cart).filter(id => cart[id] > 0);
  let total = 0;

  if (!ids.length) {
    items.innerHTML = "<p>Your cart is empty. Add dishes from the menu.</p>";
    document.getElementById("cart-total").textContent = "";
    return;
  }

  items.innerHTML = ids.map(id => {
    const d = dishes.find(item => item.id === Number(id));
    total += d.price * cart[id];
    return `
      <div class="cart-row">
        <span>${d.name}<br>${money(d.price)} × ${cart[id]}</span>
        <span>
          <button onclick="changeQty(${id},-1)">−</button>
          ${cart[id]}
          <button onclick="changeQty(${id},1)">+</button>
        </span>
      </div>`;
  }).join("");

  document.getElementById("cart-total").textContent =
    "Estimated total: " + money(total);
}

function changeQty(id, change) {
  cart[id] = (cart[id] || 0) + change;
  if (cart[id] <= 0) delete cart[id];

  document.getElementById("cart-count").textContent =
    Object.values(cart).reduce((sum, qty) => sum + qty, 0);

  renderCart();
}

function checkout() {
  const count = Object.values(cart).reduce((sum, qty) => sum + qty, 0);

  if (!count) {
    showToast("Your cart is empty!");
    return;
  }

  const total = Object.entries(cart).reduce((sum, [id, qty]) =>
    sum + dishes.find(d => d.id === Number(id)).price * qty, 0);

  alert("SAFFRON & SPICE — DEMO ORDER\n\nItems: " + count +
    "\nEstimated total: " + money(total) +
    "\n\nDemo only. No real order or payment was made.");

  cart = {};
  document.getElementById("cart-count").textContent = "0";
  closeCart();
  showToast("Demo order completed!");
}

function showToast(message) {
  const toast = document.getElementById("toast");
  toast.textContent = message;
  toast.style.display = "block";

  clearTimeout(window.toastTimer);
  window.toastTimer = setTimeout(() => {
    toast.style.display = "none";
  }, 2500);
}

const today = new Date();
const localToday = new Date(
  today.getTime() - today.getTimezoneOffset() * 60000
).toISOString().slice(0,10);

document.getElementById("reserve-date").min = localToday;

document.getElementById("reservation-form").addEventListener("submit", function(e) {
  e.preventDefault();

  const date = document.getElementById("reserve-date").value;

  if (date < localToday) {
    showToast("Choose today or a future date.");
    return;
  }

  const name = document.getElementById("guest-name").value.trim();
  const phone = document.getElementById("guest-phone").value.trim();
  const time = document.getElementById("reserve-time").value;
  const guests = document.getElementById("guests").value;

  alert("SAFFRON & SPICE — DEMO RESERVATION\n\n" +
    "Name: " + name +
    "\nPhone: " + phone +
    "\nDate: " + date +
    "\nTime: " + time +
    "\nGuests: " + guests +
    "\n\nDemo confirmation only. No real reservation was sent.");

  this.reset();
  document.getElementById("reserve-date").min = localToday;
  showToast("Demo reservation confirmed!");
});

renderMenu();
</script>

</body>
</html>
