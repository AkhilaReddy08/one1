
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vindhu Bhojanam | South Indian Restaurant</title>

<style>
:root {
  --gold: #e6b84a;
  --orange: #a93624;
  --dark: #1b100c;
  --panel: #2a1b14;
  --cream: #fff6e7;
  --muted: #d0bba6;
  --border: #57402c;
  --green: #405b2b;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html { scroll-behavior: smooth; }

body {
  font-family: Arial, sans-serif;
  background: var(--dark);
  color: var(--cream);
  line-height: 1.6;
}

a {
  color: inherit;
  text-decoration: none;
}

button, input, select, textarea { font: inherit; }
button { cursor: pointer; }

.topbar {
  background: var(--gold);
  color: #241207;
  padding: 9px 6%;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 10px;
  font-size: 12px;
  font-weight: bold;
}

header {
  position: sticky;
  top: 0;
  z-index: 10;
  background: #1b100cf5;
  padding: 18px 6%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 18px;
  border-bottom: 1px solid var(--border);
}

.logo {
  font-size: 25px;
  font-weight: 900;
  color: var(--gold);
  line-height: 1.2;
}

.logo span { color: var(--cream); }

.logo small {
  display: block;
  font-size: 9px;
  letter-spacing: 3px;
  color: var(--muted);
}

nav {
  display: flex;
  gap: 19px;
  flex-wrap: wrap;
}

nav a {
  font-size: 13px;
  font-weight: bold;
}

nav a:hover { color: var(--gold); }

.btn {
  display: inline-block;
  padding: 12px 18px;
  border: 0;
  border-radius: 4px;
  font-size: 12px;
  font-weight: bold;
  text-transform: uppercase;
  transition: .2s;
}

.primary {
  background: var(--gold);
  color: #241207;
}

.primary:hover {
  background: white;
  transform: translateY(-2px);
}

.outline {
  border: 1px solid var(--gold);
  background: transparent;
  color: var(--cream);
}

.hero {
  min-height: 590px;
  display: flex;
  align-items: center;
  padding: 70px 8%;
  background:
    linear-gradient(90deg, #1b100cf5, #1b100cb8, #1b100b30),
    url("https://images.unsplash.com/photo-1585937421612-70a008356fbe?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content { max-width: 690px; }

.eyebrow {
  color: var(--gold);
  font-size: 12px;
  font-weight: bold;
  letter-spacing: 3px;
  text-transform: uppercase;
}

.hero h1 {
  font-size: clamp(43px, 7vw, 78px);
  line-height: 1.05;
  margin: 20px 0;
  text-transform: uppercase;
}

.hero h1 span { color: var(--gold); }

.hero p {
  color: #f1dfcc;
  max-width: 540px;
  margin-bottom: 25px;
}

.actions {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.quick {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 14px;
  margin: -30px 6% 0;
  position: relative;
}

.quick article {
  background: var(--panel);
  padding: 22px;
  border: 1px solid var(--border);
  border-bottom: 3px solid var(--gold);
}

.quick strong {
  display: block;
  font-size: 25px;
  color: var(--gold);
}

.quick span {
  font-size: 11px;
  color: var(--muted);
  text-transform: uppercase;
}

.section { padding: 75px 6%; }

.heading {
  text-align: center;
  margin-bottom: 35px;
}

.heading h2,
.about h2,
.reservation h2 {
  font-size: clamp(30px, 4vw, 44px);
  line-height: 1.2;
  margin: 10px 0;
}

.heading p {
  font-size: 14px;
  color: var(--muted);
}

.menu-tools {
  display: flex;
  gap: 12px;
  margin-bottom: 25px;
}

.menu-tools input,
.menu-tools select {
  background: var(--panel);
  color: var(--cream);
  padding: 12px;
  border: 1px solid var(--border);
  border-radius: 4px;
}

.menu-tools input {
  flex: 1;
  min-width: 180px;
}

.menu-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 22px;
}

.food-card {
  background: var(--panel);
  border: 1px solid var(--border);
  overflow: hidden;
  transition: .3s;
}

.food-card:hover {
  transform: translateY(-5px);
  border-color: var(--gold);
}

.food-card img {
  width: 100%;
  height: 230px;
  display: block;
  object-fit: cover;
}

.food-info { padding: 20px; }

.tag {
  display: inline-block;
  background: #432d1e;
  color: var(--gold);
  padding: 4px 8px;
  font-size: 10px;
  font-weight: bold;
  text-transform: uppercase;
}

.food-info h3 {
  margin-top: 10px;
  font-size: 21px;
}

.food-info p {
  color: var(--muted);
  font-size: 13px;
  margin: 8px 0 15px;
}

.food-bottom {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 8px;
  border-top: 1px solid var(--border);
  padding-top: 14px;
}

.price {
  color: var(--gold);
  font-weight: bold;
  font-size: 18px;
}

.special-section { background: #25170f; }

.special-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}

.special-card {
  background: var(--panel);
  border: 1px solid var(--border);
  text-align: center;
  padding-bottom: 25px;
}

.special-card img {
  width: 100%;
  height: 240px;
  object-fit: cover;
  display: block;
}

.special-card h3 {
  color: var(--gold);
  margin: 15px 0 5px;
  font-size: 22px;
}

.special-card p {
  color: var(--muted);
  font-size: 13px;
  padding: 0 18px;
}

.about {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 45px;
  align-items: center;
}

.about img {
  width: 100%;
  height: 420px;
  object-fit: cover;
}

.about p {
  color: var(--muted);
  margin: 15px 0;
}

.benefit {
  margin: 12px 0;
  font-size: 13px;
  font-weight: bold;
}

.benefit span {
  color: var(--gold);
  margin-right: 8px;
}

.stats {
  background: var(--gold);
  color: #241207;
  padding: 40px 6%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  text-align: center;
  gap: 20px;
}

.stats strong {
  display: block;
  font-size: 34px;
}

.stats span {
  font-size: 11px;
  font-weight: bold;
  text-transform: uppercase;
}

.reservation {
  margin: 60px 6%;
  padding: 40px;
  background: var(--panel);
  border: 1px solid var(--border);
  border-top: 4px solid var(--gold);
}

.reservation > p {
  color: var(--muted);
  margin-bottom: 25px;
  font-size: 14px;
}

.form-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 17px;
}

.field label {
  display: block;
  font-size: 12px;
  font-weight: bold;
  margin-bottom: 6px;
}

.field input,
.field select,
.field textarea {
  width: 100%;
  padding: 13px;
  color: var(--cream);
  background: var(--dark);
  border: 1px solid var(--border);
  border-radius: 4px;
}

.field textarea {
  min-height: 90px;
  resize: vertical;
}

.full { grid-column: 1 / -1; }

footer {
  background: #100905;
  padding: 40px 6% 20px;
}

.footer-grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1fr;
  gap: 30px;
}

footer h3 { margin-bottom: 12px; }

footer p,
footer a {
  display: block;
  color: var(--muted);
  font-size: 12px;
  margin: 7px 0;
}

footer a:hover { color: var(--gold); }

.copyright {
  border-top: 1px solid var(--border);
  margin-top: 25px;
  padding-top: 18px;
  text-align: center;
  color: var(--muted);
  font-size: 11px;
}

.toast {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 20px;
  max-width: calc(100% - 40px);
  background: var(--gold);
  color: #241207;
  padding: 14px 20px;
  font-weight: bold;
  z-index: 30;
}

.modal {
  display: none;
  position: fixed;
  inset: 0;
  z-index: 25;
  background: #000b;
  align-items: center;
  justify-content: center;
  padding: 18px;
}

.modal.open { display: flex; }

.modal-box {
  background: var(--panel);
  padding: 28px;
  border: 1px solid var(--border);
  border-top: 4px solid var(--gold);
  width: 100%;
  max-width: 480px;
  max-height: 90vh;
  overflow-y: auto;
}

.modal-box p {
  color: var(--muted);
  font-size: 13px;
  margin: 12px 0;
}

.modal-actions {
  display: flex;
  gap: 10px;
  margin-top: 20px;
}

@media(max-width:900px) {
  header { justify-content: center; }
  .menu-grid, .special-grid { grid-template-columns: repeat(2, 1fr); }
}

@media(max-width:620px) {
  .topbar { justify-content: center; text-align: center; }
  nav { justify-content: center; gap: 12px; }
  .hero { padding: 55px 6%; min-height: 500px; }
  .quick { grid-template-columns: repeat(2, 1fr); margin: 18px 5% 0; }
  .section { padding: 50px 5%; }
  .menu-grid, .special-grid, .about { grid-template-columns: 1fr; }
  .stats { grid-template-columns: repeat(2, 1fr); }
  .reservation { margin: 30px 5%; padding: 23px; }
  .form-grid, .footer-grid { grid-template-columns: 1fr; }
  .full { grid-column: auto; }
  .menu-tools { flex-direction: column; }
  .menu-tools input, .menu-tools select { width: 100%; }
}
</style>
</head>

<body>

<div class="topbar">
  <span>🌿 AUTHENTIC SOUTH INDIAN FLAVOURS</span>
  <span>MON–SUN · 7:00 AM – 11:00 PM</span>
</div>

<header>
  <a href="#home" class="logo">
    VINDHU <span>BHOJANAM</span>
    <small>SOUTH INDIAN RESTAURANT</small>
  </a>

  <nav>
    <a href="#home">Home</a>
    <a href="#menu">Menu</a>
    <a href="#specials">Specials</a>
    <a href="#about">Our Story</a>
    <a href="#reservation">Reservation</a>
  </nav>

  <button class="btn primary" onclick="scrollToReservation()">Book a Table ↗</button>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">A taste of tradition</div>
    <h1>From our kitchen<br>to your <span>banana leaf.</span></h1>
    <p>Celebrate the flavours of South India with traditional Andhra meals, crispy dosas, soft idlis, aromatic biryanis, spicy curries and homemade sweets. Every meal brings a little taste of home.</p>
    <div class="actions">
      <button class="btn primary" onclick="scrollToMenu()">Explore Our Menu →</button>
      <button class="btn outline" onclick="scrollToReservation()">Reserve Your Table</button>
    </div>
  </div>
</section>

<div class="quick">
  <article><strong>South Indian</strong><span>Regional flavours</span></article>
  <article><strong>Fresh Daily</strong><span>Made to order</span></article>
  <article><strong>Veg & Non-Veg</strong><span>Something for everyone</span></article>
  <article><strong>Full of Flavour</strong><span>Traditional recipes</span></article>
</div>

<section class="section" id="menu">
  <div class="heading">
    <div class="eyebrow">Made with tradition</div>
    <h2>Our Food Menu</h2>
    <p>From a hearty breakfast to a traditional Andhra feast, find your favourites.</p>
  </div>

  <div class="menu-tools">
    <input id="food-search" type="search"
      placeholder="Search dishes..."
      aria-label="Search dishes"
      oninput="renderMenu()">

    <select id="food-filter" aria-label="Filter dishes"
      onchange="renderMenu()">
      <option value="All">All Dishes</option>
      <option value="Breakfast">Breakfast & Tiffins</option>
      <option value="Meals">Traditional Meals</option>
      <option value="Biryani">Biryani</option>
      <option value="Curries">Curries & Fry</option>
      <option value="Snacks">Snacks</option>
      <option value="Desserts">Sweets & Desserts</option>
      <option value="Drinks">Drinks</option>
    </select>
  </div>

  <div class="menu-grid" id="menu-grid"></div>
</section>

<section class="section special-section" id="specials">
  <div class="heading">
    <div class="eyebrow">Straight from our kitchen</div>
    <h2>House Specials</h2>
    <p>Traditional favourites prepared with aromatic spices and fresh ingredients.</p>
  </div>

  <div class="special-grid">
    <article class="special-card">
      <img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?auto=format&fit=crop&w=800&q=80"
        alt="Traditional Indian thali meal" loading="lazy">
      <h3>Andhra Bhojanam</h3>
      <p>A traditional-style spread inspired by Andhra cuisine, with rice, pappu, sambar, pachadi and accompaniments.</p>
    </article>

    <article class="special-card">
      <img src="https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=800&q=80"
        alt="South Indian dosa" loading="lazy">
      <h3>Crispy Masala Dosa</h3>
      <p>Golden dosa served with potato masala, coconut chutney and sambar.</p>
    </article>

    <article class="special-card">
      <img src="https://images.unsplash.com/photo-1563379091339-03246963d51a?auto=format&fit=crop&w=800&q=80"
        alt="Indian biryani" loading="lazy">
      <h3>Special Biryani</h3>
      <p>Fragrant basmati rice layered with spices for a satisfying and flavourful meal.</p>
    </article>
  </div>
</section>

<section class="section" id="about">
  <div class="about">
    <img src="https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1100&q=85"
      alt="Indian food served with traditional accompaniments" loading="lazy">

    <div>
      <div class="eyebrow">Our story</div>
      <h2>The warmth of home. The taste of tradition.</h2>
      <p>Vindhu Bhojanam celebrates the rich culinary traditions of South India. Inspired by the comfort of home-cooked food and the joy of sharing a meal, our restaurant concept brings regional favourites together in one welcoming place.</p>

      <div class="benefit"><span>✓</span> Traditional South Indian favourites</div>
      <div class="benefit"><span>✓</span> Andhra-inspired meals and curries</div>
      <div class="benefit"><span>✓</span> Vegetarian and non-vegetarian options</div>
      <div class="benefit"><span>✓</span> Breakfast, lunch and dinner selections</div>
      <br>
      <button class="btn primary" onclick="scrollToReservation()">Plan Your Visit →</button>
    </div>
  </div>
</section>

<section class="stats">
  <div><strong>South</strong><span>Indian Cuisine</span></div>
  <div><strong>Daily</strong><span>Fresh Preparation</span></div>
  <div><strong>Classic</strong><span>Regional Recipes</span></div>
  <div><strong>₹79+</strong><span>Illustrative Menu Prices</span></div>
</section>

<section class="reservation" id="reservation">
  <div class="eyebrow">We look forward to serving you</div>
  <h2>Reserve Your Table</h2>
  <p>Enter your details to preview a table reservation. This demo does not send your information or make a real booking.</p>

  <form id="reservation-form">
    <div class="form-grid">
      <div class="field">
        <label for="guest-name">Full name *</label>
        <input id="guest-name" required maxlength="100"
          autocomplete="name" placeholder="Enter your name">
      </div>

      <div class="field">
        <label for="guest-phone">Phone number *</label>
        <input id="guest-phone" type="tel" required
          pattern="[0-9+() -]{8,18}" autocomplete="tel"
          placeholder="+91 98765 43210">
      </div>

      <div class="field">
        <label for="guest-email">Email address</label>
        <input id="guest-email" type="email"
          autocomplete="email" placeholder="you@example.com">
      </div>

      <div class="field">
        <label for="guest-count">Number of guests *</label>
        <select id="guest-count" required>
          <option value="">Select guests</option>
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
          <option>6</option>
          <option>7</option>
          <option>8</option>
          <option>9+</option>
        </select>
      </div>

      <div class="field">
        <label for="booking-date">Reservation date *</label>
        <input id="booking-date" type="date" required>
      </div>

      <div class="field">
        <label for="booking-time">Preferred time *</label>
        <select id="booking-time" required>
          <option value="">Choose a time</option>
          <option>7:00 AM</option>
          <option>8:00 AM</option>
          <option>9:00 AM</option>
          <option>10:00 AM</option>
          <option>11:00 AM</option>
          <option>12:00 PM</option>
          <option>1:00 PM</option>
          <option>2:00 PM</option>
          <option>3:00 PM</option>
          <option>4:00 PM</option>
          <option>5:00 PM</option>
          <option>6:00 PM</option>
          <option>7:00 PM</option>
          <option>8:00 PM</option>
          <option>9:00 PM</option>
          <option>10:00 PM</option>
        </select>
      </div>

      <div class="field full">
        <label for="guest-notes">Special requests (optional)</label>
        <textarea id="guest-notes" maxlength="500"
          placeholder="Dietary preferences, seating or special occasions"></textarea>
      </div>

      <div class="full">
        <button class="btn primary" type="submit">Preview Reservation →</button>
      </div>
    </div>
  </form>
</section>

<footer>
  <div class="footer-grid">
    <div>
      <h2 class="logo">VINDHU <span>BHOJANAM</span></h2>
      <p>Traditional South Indian food, served with warmth and love.</p>
      <p>📍 Hyderabad, Telangana, India</p>
      <p>☎ Contact: Add your restaurant phone number</p>
      <p>🕒 Daily: 7:00 AM – 11:00 PM</p>
    </div>

    <div>
      <h3>Explore</h3>
      <a href="#menu">Food Menu</a>
      <a href="#specials">House Specials</a>
      <a href="#about">Our Story</a>
    </div>

    <div>
      <h3>Visit Us</h3>
      <a href="#reservation">Reserve a Table</a>
      <a href="#menu">Explore Dishes</a>
      <a href="#home">Back to Top ↑</a>
    </div>
  </div>

  <div class="copyright">
    © 2026 Vindhu Bhojanam — Restaurant website demo.
    Menu prices and images are illustrative.
    No real reservation or payment is processed.
  </div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<div class="modal" id="confirmation-modal" role="dialog"
  aria-modal="true" aria-labelledby="confirmation-title">
  <div class="modal-box">
    <h2 id="confirmation-title">Reservation Preview</h2>
    <p id="confirmation-details"></p>
    <p><strong>Demo only:</strong> No table was booked and no information was sent.</p>
    <div class="modal-actions">
      <button class="btn primary" onclick="closeConfirmation()">Done</button>
      <button class="btn outline" onclick="closeConfirmation()">Close</button>
    </div>
  </div>
</div>

<script>
const dishes = [
  {
    id: 1,
    name: "Idli & Sambar",
    category: "Breakfast",
    price: 79,
    image: "photo-1589301760014-d929f3979dbc",
    description: "Soft steamed idlis served with sambar and coconut chutney.",
    badge: "South Indian"
  },
  {
    id: 2,
    name: "Masala Dosa",
    category: "Breakfast",
    price: 149,
    image: "photo-1668236543090-82eba5ee5976",
    description: "Crispy dosa filled with spiced potato masala and chutneys.",
    badge: "Popular"
  },
  {
    id: 3,
    name: "Pesarattu",
    category: "Breakfast",
    price: 129,
    image: "photo-1630383249896-424e482df921",
    description: "Andhra-style green gram dosa served with ginger chutney.",
    badge: "Andhra Special"
  },
  {
    id: 4,
    name: "Andhra Veg Meals",
    category: "Meals",
    price: 199,
    image: "photo-1546833999-b9f581a1996d",
    description: "A traditional-style meal with rice and assorted accompaniments.",
    badge: "Traditional"
  },
  {
    id: 5,
    name: "Andhra Chicken Curry",
    category: "Curries",
    price: 299,
    image: "photo-1603894584373-5ac82b2ae398",
    description: "Chicken curry inspired by the bold spices of Andhra cuisine.",
    badge: "Spicy Favourite"
  },
  {
    id: 6,
    name: "Chicken Dum Biryani",
    category: "Biryani",
    price: 299,
    image: "photo-1563379091339-03246963d51a",
    description: "Aromatic basmati rice with chicken and fragrant spices.",
    badge: "Bestseller"
  },
  {
    id: 7,
    name: "Gutti Vankaya Curry",
    category: "Curries",
    price: 229,
    image: "photo-1631452180519-c014fe946bc7",
    description: "A traditional-style stuffed brinjal curry inspired by Andhra cooking.",
    badge: "Regional Favourite"
  },
  {
    id: 8,
    name: "Mirchi Bajji",
    category: "Snacks",
    price: 89,
    image: "photo-1601050690597-df0568f70950",
    description: "Crispy chilli fritters, a popular South Indian tea-time snack.",
    badge: "Tea-Time Snack"
  },
  {
    id: 9,
    name: "Gulab Jamun",
    category: "Desserts",
    price: 99,
    image: "photo-1666190092159-4a2d5d6b4c90",
    description: "Soft, syrup-soaked sweets for a delicious finish.",
    badge: "Sweet Treat"
  },
  {
    id: 10,
    name: "Filter Coffee",
    category: "Drinks",
    price: 49,
    image: "photo-1570968915860-54d5c301fa9f",
    description: "A comforting South Indian-style filter coffee.",
    badge: "Classic"
  },
  {
    id: 11,
    name: "Curd Rice",
    category: "Meals",
    price: 119,
    image: "photo-1512621776951-a57141f2eefd",
    description: "A comforting rice dish inspired by a South Indian classic.",
    badge: "Comfort Food"
  },
  {
    id: 12,
    name: "Medu Vada",
    category: "Snacks",
    price: 89,
    image: "photo-1601050690117-94f5f6fa8bd7",
    description: "Crispy golden lentil fritters served with chutney.",
    badge: "Crispy Favourite"
  }
];

function money(amount) {
  return new Intl.NumberFormat("en-IN", {
    style: "currency",
    currency: "INR",
    maximumFractionDigits: 0
  }).format(amount);
}

function renderMenu() {
  const query = document.getElementById("food-search")
    .value.toLowerCase().trim();

  const category = document.getElementById("food-filter").value;

  const filtered = dishes.filter(dish =>
    (
      dish.name + " " + dish.category + " " +
      dish.description + " " + dish.badge
    ).toLowerCase().includes(query) &&
    (category === "All" || dish.category === category)
  );

  const grid = document.getElementById("menu-grid");

  if (!filtered.length) {
    grid.innerHTML = "<p>No matching dishes found. Try another search.</p>";
    return;
  }

  grid.innerHTML = filtered.map(dish => `
    <article class="food-card">
      <img
        src="https://images.unsplash.com/${dish.image}?auto=format&fit=crop&w=700&q=80"
        alt="${dish.name}"
        loading="lazy"
        onerror="this.onerror=null;this.src='https://placehold.co/700x450/2a1b14/e6b84a?text=South+Indian+Food'">

      <div class="food-info">
        <span class="tag">${dish.badge}</span>
        <h3>${dish.name}</h3>
        <p>${dish.description}</p>

        <div class="food-bottom">
          <span class="price">${money(dish.price)}</span>
          <button class="btn primary" onclick="chooseDish(${dish.id})">
            Enquire
          </button>
        </div>
      </div>
    </article>
  `).join("");
}

function scrollToMenu() {
  document.getElementById("menu").scrollIntoView({
    behavior: "smooth"
  });
}

function scrollToReservation() {
  document.getElementById("reservation").scrollIntoView({
    behavior: "smooth"
  });
}

function chooseDish(id) {
  const dish = dishes.find(item => item.id === id);
  showToast(dish.name + " — " + money(dish.price) + ". Menu enquiry demo.");
}

function showToast(message) {
  const toast = document.getElementById("toast");
  toast.textContent = message;
  toast.style.display = "block";

  clearTimeout(window.toastTimer);
  window.toastTimer = setTimeout(() => {
    toast.style.display = "none";
  }, 3000);
}

function closeConfirmation() {
  document.getElementById("confirmation-modal")
    .classList.remove("open");
}

function localDateString(date) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  return `${year}-${month}-${day}`;
}

const bookingDate = document.getElementById("booking-date");

function setBookingDateMinimum() {
  bookingDate.min = localDateString(new Date());

  if (bookingDate.value && bookingDate.value < bookingDate.min) {
    bookingDate.value = "";
  }
}

setBookingDateMinimum();

document.getElementById("reservation-form")
  .addEventListener("submit", function(event) {
    event.preventDefault();

    setBookingDateMinimum();

    if (bookingDate.value < localDateString(new Date())) {
      showToast("Please choose today or a future date.");
      return;
    }

    const details = [
      "Name: " + document.getElementById("guest-name").value.trim(),
      "Phone: " + document.getElementById("guest-phone").value.trim(),
      "Guests: " + document.getElementById("guest-count").value,
      "Date: " + bookingDate.value,
      "Time: " + document.getElementById("booking-time").value,
      "Special requests: " +
        (document.getElementById("guest-notes").value.trim() || "None")
    ].join("\n");

    const detailsElement =
      document.getElementById("confirmation-details");

    detailsElement.style.whiteSpace = "pre-line";
    detailsElement.textContent = details;

    document.getElementById("confirmation-modal")
      .classList.add("open");
  });

document.getElementById("confirmation-modal")
  .addEventListener("click", function(event) {
    if (event.target === this) closeConfirmation();
  });

document.addEventListener("keydown", function(event) {
  if (event.key === "Escape") closeConfirmation();
});

renderMenu();
</script>

</body>
</html>
