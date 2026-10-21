
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Travel Diaries | Discover Your Next Adventure</title>

<style>
:root {
  --navy: #142b3b;
  --blue: #287f8c;
  --teal: #4aa6a1;
  --gold: #e8b86d;
  --cream: #f7f8f5;
  --white: #ffffff;
  --muted: #77838a;
  --border: #e4e9e8;
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
  color: var(--navy);
  line-height: 1.6;
}

button, input, select {
  font: inherit;
}

button { cursor: pointer; }

a { color: inherit; }

.announcement {
  text-align: center;
  background: var(--navy);
  color: white;
  padding: 8px;
  font-size: 12px;
  letter-spacing: 1px;
}

header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 17px 6%;
  gap: 22px;
  flex-wrap: wrap;
  background: white;
  border-bottom: 1px solid var(--border);
}

.logo {
  font-family: Georgia, serif;
  font-size: 27px;
  font-weight: bold;
  color: var(--navy);
  letter-spacing: -1px;
}

.logo span { color: var(--teal); }

.logo small {
  display: block;
  font: 10px "Segoe UI", Arial, sans-serif;
  letter-spacing: 3px;
  color: var(--muted);
}

nav {
  display: flex;
  align-items: center;
  gap: 24px;
  flex-wrap: wrap;
}

nav a {
  font-size: 14px;
  font-weight: 600;
  text-decoration: none;
}

nav a:hover { color: var(--blue); }

.header-actions {
  display: flex;
  align-items: center;
  gap: 10px;
}

.button {
  border: 0;
  border-radius: 6px;
  padding: 11px 17px;
  font-weight: 600;
  transition: .2s;
}

.primary {
  background: var(--blue);
  color: white;
}

.primary:hover { background: var(--navy); }

.outline {
  background: white;
  border: 1px solid var(--border);
  color: var(--navy);
}

.hero {
  margin: 24px 4%;
  min-height: 500px;
  border-radius: 16px;
  overflow: hidden;
  display: flex;
  align-items: center;
  padding: 55px 7%;
  color: white;
  background:
    linear-gradient(90deg, rgba(9, 31, 43, .85), rgba(9, 31, 43, .14)),
    url("https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=1800&q=85")
    center/cover;
}

.hero-content { max-width: 620px; }

.eyebrow {
  color: var(--gold);
  text-transform: uppercase;
  letter-spacing: 3px;
  font-size: 12px;
  font-weight: 700;
}

.hero h1 {
  font-family: Georgia, serif;
  font-size: clamp(40px, 6vw, 70px);
  line-height: 1.08;
  margin: 17px 0;
}

.hero p {
  max-width: 490px;
  color: #f0f4f4;
  margin-bottom: 26px;
}

.hero-buttons {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.gold-button {
  background: var(--gold);
  color: var(--navy);
  border: none;
  padding: 13px 22px;
  border-radius: 6px;
  font-weight: 700;
}

.light-button {
  background: #ffffff1c;
  color: white;
  border: 1px solid #ffffffa0;
  padding: 13px 22px;
  border-radius: 6px;
}

.search-panel {
  position: relative;
  z-index: 2;
  margin: -45px auto 0;
  width: 88%;
  max-width: 1100px;
  background: white;
  border-radius: 12px;
  box-shadow: 0 12px 35px #152e3b12;
  padding: 20px;
}

.search-grid {
  display: grid;
  grid-template-columns: 1.4fr 1fr 1fr auto;
  gap: 15px;
  align-items: end;
}

.field label {
  display: block;
  font-size: 12px;
  font-weight: 700;
  color: var(--muted);
  margin-bottom: 6px;
}

.field input, .field select {
  width: 100%;
  padding: 12px;
  border: 1px solid var(--border);
  background: #fcfdfc;
  border-radius: 6px;
  color: var(--navy);
  min-width: 0;
}

.section { padding: 65px 6%; }

.section-heading {
  text-align: center;
  margin-bottom: 30px;
}

.section-heading .eyebrow { color: var(--blue); }

.section-heading h2 {
  font: bold 36px Georgia, serif;
  margin: 6px 0;
}

.section-heading p {
  color: var(--muted);
  font-size: 14px;
}

.destination-grid {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 20px;
}

.destination {
  position: relative;
  min-height: 315px;
  border-radius: 12px;
  overflow: hidden;
  color: white;
  cursor: pointer;
  background: var(--navy);
  isolation: isolate;
}

.destination img {
  width: 100%;
  height: 100%;
  min-height: 315px;
  object-fit: cover;
  position: absolute;
  inset: 0;
  transition: transform .4s;
  z-index: -2;
}

.destination:hover img { transform: scale(1.06); }

.destination::after {
  content: "";
  position: absolute;
  inset: 0;
  background: linear-gradient(transparent 35%, rgba(5, 24, 32, .88));
  z-index: -1;
}

.destination-info {
  position: absolute;
  bottom: 18px;
  left: 18px;
  right: 18px;
}

.destination-info h3 {
  font: bold 24px Georgia, serif;
}

.destination-info p {
  font-size: 13px;
  color: #f1f3f2;
}

.destination-info span {
  color: var(--gold);
  font-size: 12px;
  font-weight: bold;
}

.package-section { background: #edf3f0; }

.package-tools {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 12px;
  margin-bottom: 24px;
}

.package-tools input, .package-tools select {
  border: 1px solid #d9e3de;
  padding: 12px;
  border-radius: 6px;
  background: white;
}

.package-tools input { flex: 1; min-width: 180px; }

.package-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 22px;
}

.package-card {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  border: 1px solid #e3eae6;
  transition: .2s;
}

.package-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 28px #193d3010;
}

.package-image {
  height: 225px;
  position: relative;
}

.package-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.package-tag {
  position: absolute;
  top: 12px;
  left: 12px;
  background: white;
  padding: 5px 10px;
  border-radius: 5px;
  font-size: 11px;
  font-weight: 700;
}

.favorite {
  position: absolute;
  right: 12px;
  top: 12px;
  border: none;
  background: white;
  width: 36px;
  height: 36px;
  border-radius: 50%;
  font-size: 19px;
  color: #6c7c80;
}

.favorite.active { color: #d84a5b; }

.package-info { padding: 18px; }

.package-info h3 {
  font: bold 22px Georgia, serif;
  margin: 3px 0;
}

.location {
  font-size: 13px;
  color: var(--muted);
}

.package-rating {
  font-size: 12px;
  color: #b17c20;
  margin: 9px 0;
}

.package-description {
  color: #697981;
  font-size: 13px;
  min-height: 42px;
}

.package-bottom {
  border-top: 1px solid var(--border);
  margin-top: 14px;
  padding-top: 14px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
}

.package-price small {
  display: block;
  color: var(--muted);
  font-size: 11px;
}

.package-price strong {
  font-size: 21px;
  color: var(--navy);
}

.book-button {
  background: var(--blue);
  color: white;
  border: none;
  border-radius: 6px;
  padding: 10px 13px;
  font-size: 13px;
  font-weight: 700;
}

.book-button:hover { background: var(--navy); }

.no-results {
  grid-column: 1 / -1;
  background: white;
  border-radius: 10px;
  padding: 35px;
  text-align: center;
  color: var(--muted);
}

.experience {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 45px;
  align-items: center;
}

.experience-image img {
  width: 100%;
  height: 400px;
  object-fit: cover;
  border-radius: 14px;
}

.experience-copy h2 {
  font: bold 38px Georgia, serif;
  line-height: 1.2;
  margin: 10px 0 18px;
}

.experience-copy p {
  color: var(--muted);
  margin-bottom: 20px;
}

.feature {
  display: flex;
  gap: 12px;
  margin: 17px 0;
}

.feature-icon {
  flex-shrink: 0;
  width: 43px;
  height: 43px;
  background: #e1f0e9;
  border-radius: 8px;
  display: grid;
  place-items: center;
  font-size: 20px;
}

.feature h3 { font-size: 15px; }

.feature p {
  margin: 2px 0 0;
  font-size: 13px;
}

.stats {
  background: var(--navy);
  color: white;
  padding: 36px 6%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  text-align: center;
  gap: 20px;
}

.stat strong {
  display: block;
  color: var(--gold);
  font: bold 32px Georgia, serif;
}

.stat span {
  color: #d1dadd;
  font-size: 13px;
}

.cta {
  margin: 55px 6%;
  padding: 45px 25px;
  text-align: center;
  border-radius: 14px;
  background: #e3f0e9;
}

.cta h2 {
  font: bold 34px Georgia, serif;
  margin-bottom: 10px;
}

.cta p {
  color: var(--muted);
  margin-bottom: 20px;
}

footer {
  background: #102633;
  color: white;
  padding: 38px 6%;
}

.footer-grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1fr;
  gap: 35px;
}

footer h3 {
  font-family: Georgia, serif;
  margin-bottom: 10px;
}

footer p, footer a {
  font-size: 13px;
  color: #cad6da;
}

footer a {
  display: block;
  text-decoration: none;
  margin: 5px 0;
}

footer a:hover { color: var(--gold); }

.copyright {
  border-top: 1px solid #ffffff25;
  padding-top: 18px;
  margin-top: 28px;
  text-align: center;
  font-size: 12px;
  color: #bac8ce;
}

/* Booking dialog */

.modal-backdrop {
  position: fixed;
  inset: 0;
  z-index: 50;
  background: #071b25b8;
  display: none;
  align-items: center;
  justify-content: center;
  padding: 16px;
}

.modal-backdrop.open { display: flex; }

.modal {
  width: 100%;
  max-width: 480px;
  max-height: 90vh;
  overflow-y: auto;
  background: white;
  border-radius: 13px;
  padding: 25px;
}

.modal-header {
  display: flex;
  justify-content: space-between;
  gap: 15px;
  margin-bottom: 15px;
}

.modal-header h2 { font: bold 27px Georgia, serif; }

.modal-close {
  border: none;
  background: #eef3f0;
  border-radius: 5px;
  padding: 5px 10px;
  height: 35px;
}

.booking-form {
  display: grid;
  gap: 13px;
}

.booking-form label {
  font-size: 12px;
  font-weight: 700;
  display: block;
  margin-bottom: 5px;
}

.booking-form input, .booking-form select {
  width: 100%;
  border: 1px solid var(--border);
  border-radius: 6px;
  padding: 11px;
}

.booking-summary {
  background: #edf5f0;
  padding: 13px;
  border-radius: 7px;
  font-size: 14px;
}

.toast {
  position: fixed;
  z-index: 100;
  bottom: 20px;
  right: 20px;
  background: var(--navy);
  color: white;
  padding: 13px 20px;
  border-radius: 7px;
  box-shadow: 0 5px 20px #0002;
  display: none;
  max-width: 90%;
}

@media(max-width: 1000px) {
  .destination-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .package-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  .search-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  header { justify-content: center; }
}

@media(max-width: 650px) {
  nav { justify-content: center; gap: 14px; }
  .hero { min-height: 440px; margin: 14px; padding: 30px 24px; }
  .search-panel { margin-top: 0; width: calc(100% - 28px); }
  .search-grid { grid-template-columns: 1fr; }
  .destination-grid, .package-grid { grid-template-columns: 1fr; }
  .destination, .destination img { min-height: 280px; }
  .experience { grid-template-columns: 1fr; gap: 25px; }
  .experience-image img { height: 280px; }
  .experience-copy h2 { font-size: 32px; }
  .stats { grid-template-columns: repeat(2, 1fr); }
  .footer-grid { grid-template-columns: 1fr; gap: 22px; }
  .section { padding: 43px 5%; }
  .section-heading h2 { font-size: 29px; }
  .package-tools input, .package-tools select { width: 100%; }
  .cta { margin: 35px 5%; }
}
</style>
</head>

<body>

<div class="announcement">
  YOUR NEXT ADVENTURE STARTS HERE · EXPLORE MORE, WORRY LESS
</div>

<header>
  <a href="#home" class="logo" style="text-decoration:none">
    Travel <span>Diaries.</span>
    <small>COLLECT MOMENTS, NOT THINGS</small>
  </a>

  <nav>
    <a href="#home">Home</a>
    <a href="#destinations">Destinations</a>
    <a href="#packages">Tour Packages</a>
    <a href="#about">About Us</a>
  </nav>

  <div class="header-actions">
    <button class="button outline" onclick="showFavorites()">
      ♡ Saved (<span id="favorite-count">0</span>)
    </button>
    <button class="button primary" onclick="scrollToPackages()">
      Explore Trips
    </button>
  </div>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">Find Your Somewhere</div>
    <h1>The world is a book. Go write your story.</h1>
    <p>
      Discover breathtaking places, unforgettable experiences,
      and thoughtfully planned journeys made for the way you travel.
    </p>
    <div class="hero-buttons">
      <button class="gold-button" onclick="scrollToPackages()">
        Explore Destinations →
      </button>
      <button class="light-button" onclick="scrollToDestinations()">
        Find Inspiration
      </button>
    </div>
  </div>
</section>

<section class="search-panel" aria-label="Find a trip">
  <div class="search-grid">
    <div class="field">
      <label for="destination-search">WHERE TO?</label>
      <input id="destination-search" type="search"
        placeholder="Search a destination...">
    </div>

    <div class="field">
      <label for="travel-date">TRAVEL DATE</label>
      <input id="travel-date" type="date">
    </div>

    <div class="field">
      <label for="travelers">TRAVELERS</label>
      <select id="travelers">
        <option value="1">1 Traveler</option>
        <option value="2" selected>2 Travelers</option>
        <option value="3">3 Travelers</option>
        <option value="4">4 Travelers</option>
        <option value="5">5 Travelers</option>
        <option value="6">6+ Travelers</option>
      </select>
    </div>

    <button class="button primary" onclick="searchTrips()">
      Search Trips
    </button>
  </div>
</section>

<section class="section" id="destinations">
  <div class="section-heading">
    <div class="eyebrow">Places Worth Exploring</div>
    <h2>Popular Destinations</h2>
    <p>From peaceful mountain escapes to tropical adventures.</p>
  </div>

  <div class="destination-grid">
    <article class="destination" onclick="selectDestination('Bali')">
      <img src="https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=800&q=85"
        alt="Bali tropical landscape" loading="lazy">
      <div class="destination-info">
        <span>ISLAND ESCAPE</span>
        <h3>Bali, Indonesia</h3>
        <p>Temples, beaches and tropical sunsets</p>
      </div>
    </article>

    <article class="destination" onclick="selectDestination('Switzerland')">
      <img src="https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=800&q=85"
        alt="Swiss mountain scenery" loading="lazy">
      <div class="destination-info">
        <span>ALPINE ADVENTURE</span>
        <h3>Switzerland</h3>
        <p>Mountain villages and scenic railways</p>
      </div>
    </article>

    <article class="destination" onclick="selectDestination('Maldives')">
      <img src="https://images.unsplash.com/photo-1514282401047-d79a71a590e8?auto=format&fit=crop&w=800&q=85"
        alt="Maldives tropical sea" loading="lazy">
      <div class="destination-info">
        <span>BEACH PARADISE</span>
        <h3>Maldives</h3>
        <p>Crystal waters and island living</p>
      </div>
    </article>

    <article class="destination" onclick="selectDestination('Manali')">
      <img src="https://images.unsplash.com/photo-1626621341517-bbf3d9990a23?auto=format&fit=crop&w=800&q=85"
        alt="Mountain landscape in India" loading="lazy">
      <div class="destination-info">
        <span>MOUNTAIN RETREAT</span>
        <h3>Manali, India</h3>
        <p>Himalayan views and cozy escapes</p>
      </div>
    </article>
  </div>
</section>

<section class="section package-section" id="packages">
  <div class="section-heading">
    <div class="eyebrow">Handpicked for You</div>
    <h2>Explore Our Tour Packages</h2>
    <p>Find your next escape, with packages for different budgets.</p>
  </div>

  <div class="package-tools">
    <input id="package-search" type="search"
      placeholder="Search trips or destinations..."
      oninput="renderPackages()" aria-label="Search packages">

    <select id="trip-type" onchange="renderPackages()" aria-label="Filter by trip type">
      <option value="All">All Experiences</option>
      <option value="Beach">Beach Holidays</option>
      <option value="Adventure">Adventure</option>
      <option value="Culture">Culture & Heritage</option>
      <option value="Romantic">Romantic Getaways</option>
    </select>

    <select id="price-sort" onchange="renderPackages()" aria-label="Sort by price">
      <option value="default">Recommended</option>
      <option value="low">Price: Low to High</option>
      <option value="high">Price: High to Low</option>
    </select>
  </div>

  <div class="package-grid" id="package-grid"></div>
</section>

<section class="section" id="about">
  <div class="experience">
    <div class="experience-image">
      <img src="https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=1000&q=85"
        alt="Beautiful lake surrounded by mountains" loading="lazy">
    </div>

    <div class="experience-copy">
      <div class="eyebrow">The Travel Diaries Difference</div>
      <h2>Every journey deserves a beautiful beginning.</h2>
      <p>
        We believe travel is more than visiting a destination.
        It is about discovering new cultures, sharing experiences,
        and creating memories that stay with you.
      </p>

      <div class="feature">
        <div class="feature-icon">🧭</div>
        <div>
          <h3>Thoughtfully Curated Trips</h3>
          <p>Explore itineraries designed around memorable experiences.</p>
        </div>
      </div>

      <div class="feature">
        <div class="feature-icon">🌍</div>
        <div>
          <h3>Destinations for Every Traveler</h3>
          <p>From peaceful escapes to adventure-filled holidays.</p>
        </div>
      </div>

      <div class="feature">
        <div class="feature-icon">💙</div>
        <div>
          <h3>Travel Your Way</h3>
          <p>Choose destinations and trips that match your interests.</p>
        </div>
      </div>

      <button class="button primary" onclick="scrollToPackages()">
        Find Your Next Trip →
      </button>
    </div>
  </div>
</section>

<section class="stats">
  <div class="stat">
    <strong>25+</strong>
    <span>Destinations to Discover</span>
  </div>
  <div class="stat">
    <strong>50+</strong>
    <span>Travel Experiences</span>
  </div>
  <div class="stat">
    <strong>4.8/5</strong>
    <span>Demo Rating</span>
  </div>
  <div class="stat">
    <strong>24/7</strong>
    <span>Travel Inspiration</span>
  </div>
</section>

<section class="cta">
  <div class="eyebrow">Your Story Is Waiting</div>
  <h2>Where will you go next?</h2>
  <p>Your next unforgettable memory could be just one trip away.</p>
  <button class="button primary" onclick="scrollToPackages()">
    Discover Your Journey →
  </button>
</section>

<footer>
  <div class="footer-grid">
    <div>
      <h3>Travel Diaries.</h3>
      <p>
        Inspiring travelers to see more of the world,
        embrace new experiences, and collect memories.
      </p>
    </div>

    <div>
      <h3>Explore</h3>
      <a href="#destinations">Destinations</a>
      <a href="#packages">Tour Packages</a>
      <a href="#about">Our Story</a>
    </div>

    <div>
      <h3>Travel Categories</h3>
      <a href="#packages">Beach Holidays</a>
      <a href="#packages">Mountain Adventures</a>
      <a href="#packages">Cultural Journeys</a>
    </div>
  </div>

  <div class="copyright">
    © 2026 Travel Diaries. All rights reserved.
    <br>Demo website. Prices, ratings and availability are illustrative.
  </div>
</footer>

<div class="modal-backdrop" id="booking-modal"
  onclick="backdropClose(event)">
  <div class="modal" role="dialog" aria-modal="true"
    aria-labelledby="modal-title">

    <div class="modal-header">
      <div>
        <div class="eyebrow">Start Your Journey</div>
        <h2 id="modal-title">Plan Your Trip</h2>
      </div>
      <button class="modal-close" onclick="closeBooking()">✕</button>
    </div>

    <div class="booking-summary" id="booking-summary"></div>

    <form class="booking-form" id="booking-form">
      <div>
        <label for="guest-name">Your Full Name</label>
        <input id="guest-name" required placeholder="Enter your name">
      </div>

      <div>
        <label for="guest-email">Email Address</label>
        <input id="guest-email" type="email" required
          placeholder="you@example.com">
      </div>

      <div>
        <label for="booking-date">Preferred Travel Date</label>
        <input id="booking-date" type="date" required>
      </div>

      <div>
        <label for="booking-guests">Number of Travelers</label>
        <select id="booking-guests">
          <option value="1">1 Traveler</option>
          <option value="2">2 Travelers</option>
          <option value="3">3 Travelers</option>
          <option value="4">4 Travelers</option>
          <option value="5">5 Travelers</option>
          <option value="6">6 Travelers</option>
        </select>
      </div>

      <div class="booking-summary" id="booking-total"></div>

      <button type="submit" class="button primary">
        Confirm Demo Booking
      </button>
      <p style="font-size:11px;color:#77838a">
        Demo only. No payment is collected and no real reservation is made.
      </p>
    </form>
  </div>
</div>

<div class="toast" id="toast" role="status"></div>

<script>
const packages = [
  {
    id: 1,
    name: "Bali Tropical Escape",
    destination: "Bali, Indonesia",
    type: "Beach",
    days: 5,
    price: 32999,
    rating: "4.9",
    tag: "BEST SELLER",
    image: "photo-1537996194471-e657df975ab4",
    description: "Explore lush rice terraces, beautiful temples and tropical beaches."
  },
  {
    id: 2,
    name: "Swiss Alpine Adventure",
    destination: "Switzerland",
    type: "Adventure",
    days: 7,
    price: 89999,
    rating: "4.8",
    tag: "ADVENTURE",
    image: "photo-1531366936337-7c912a4589a7",
    description: "Discover alpine villages, mountain views and scenic train journeys."
  },
  {
    id: 3,
    name: "Maldives Island Retreat",
    destination: "Maldives",
    type: "Romantic",
    days: 4,
    price: 45999,
    rating: "4.9",
    tag: "ROMANTIC",
    image: "photo-1514282401047-d79a71a590e8",
    description: "Enjoy turquoise waters, island scenery and relaxing beach days."
  },
  {
    id: 4,
    name: "Manali Mountain Trails",
    destination: "Manali, India",
    type: "Adventure",
    days: 5,
    price: 14999,
    rating: "4.7",
    tag: "POPULAR",
    image: "photo-1626621341517-bbf3d9990a23",
    description: "Experience Himalayan scenery, mountain roads and fresh air."
  },
  {
    id: 5,
    name: "Jaipur Royal Heritage",
    destination: "Jaipur, India",
    type: "Culture",
    days: 3,
    price: 9999,
    rating: "4.6",
    tag: "CULTURE",
    image: "photo-1477587458883-47145ed94245",
    description: "Explore colorful markets, grand forts and Rajasthan's rich heritage."
  },
  {
    id: 6,
    name: "Kerala Backwater Escape",
    destination: "Alleppey, India",
    type: "Romantic",
    days: 4,
    price: 17999,
    rating: "4.8",
    tag: "RELAX & UNWIND",
    image: "photo-1602216056096-3b40cc0c9944",
    description: "Discover tranquil backwaters, tropical greenery and local cuisine."
  },
  {
    id: 7,
    name: "Goa Coastal Holiday",
    destination: "Goa, India",
    type: "Beach",
    days: 4,
    price: 12999,
    rating: "4.7",
    tag: "BEACH TIME",
    image: "photo-1512343879784-a960bf40e7f2",
    description: "Spend your days exploring sandy beaches and coastal towns."
  },
  {
    id: 8,
    name: "Agra Heritage Journey",
    destination: "Agra, India",
    type: "Culture",
    days: 2,
    price: 7999,
    rating: "4.6",
    tag: "HERITAGE",
    image: "photo-1564507592333-c60657eea523",
    description: "Discover iconic architecture and the history of Mughal India."
  },
  {
    id: 9,
    name: "Santorini Sunset Escape",
    destination: "Santorini, Greece",
    type: "Romantic",
    days: 6,
    price: 74999,
    rating: "4.9",
    tag: "SIGNATURE",
    image: "photo-1533105079780-92b9be482077",
    description: "Enjoy whitewashed villages, sea views and unforgettable sunsets."
  }
];

let favorites = new Set();
let selectedPackage = null;

function money(amount) {
  return new Intl.NumberFormat("en-IN", {
    style: "currency",
    currency: "INR",
    maximumFractionDigits: 0
  }).format(amount);
}

function renderPackages() {
  const search = document.getElementById("package-search")
    .value.trim().toLowerCase();

  const type = document.getElementById("trip-type").value;
  const sort = document.getElementById("price-sort").value;

  let list = packages.filter(p =>
    (p.name + " " + p.destination + " " + p.type)
      .toLowerCase().includes(search) &&
    (type === "All" || p.type === type)
  );

  if (sort === "low") list.sort((a, b) => a.price - b.price);
  if (sort === "high") list.sort((a, b) => b.price - a.price);

  const container = document.getElementById("package-grid");

  if (!list.length) {
    container.innerHTML =
      '<div class="no-results">No trips found. Try another destination or category.</div>';
    return;
  }

  container.innerHTML = list.map(p => `
    <article class="package-card">
      <div class="package-image">
        <img
          src="https://images.unsplash.com/${p.image}?auto=format&fit=crop&w=800&q=85"
          alt="${p.destination}"
          loading="lazy"
          onerror="this.onerror=null;this.src='https://placehold.co/800x500/e3f0e9/142b3b?text=Travel+Diaries'">

        <span class="package-tag">${p.tag}</span>

        <button
          class="favorite ${favorites.has(p.id) ? "active" : ""}"
          aria-label="${favorites.has(p.id) ? "Remove from" : "Add to"} favorites"
          aria-pressed="${favorites.has(p.id)}"
          onclick="toggleFavorite(${p.id})">
          ${favorites.has(p.id) ? "♥" : "♡"}
        </button>
      </div>

      <div class="package-info">
        <div class="location">📍 ${p.destination}</div>
        <h3>${p.name}</h3>
        <div class="package-rating">★ ${p.rating}
          <span style="color:#77838a">(Demo rating)</span>
        </div>
        <p class="package-description">${p.description}</p>

        <div style="font-size:12px;color:#77838a;margin-top:8px">
          🗓 ${p.days} days · ${p.type}
        </div>

        <div class="package-bottom">
          <div class="package-price">
            <small>Starting from / person</small>
            <strong>${money(p.price)}</strong>
          </div>
          <button class="book-button" onclick="openBooking(${p.id})">
            View & Book
          </button>
        </div>
      </div>
    </article>
  `).join("");
}

function toggleFavorite(id) {
  const p = packages.find(item => item.id === id);

  if (favorites.has(id)) {
    favorites.delete(id);
    showToast(p.name + " removed from saved trips.");
  } else {
    favorites.add(id);
    showToast(p.name + " saved to your favorites!");
  }

  document.getElementById("favorite-count").textContent = favorites.size;
  renderPackages();
}

function showFavorites() {
  if (!favorites.size) {
    showToast("No saved trips yet. Tap ♡ on a package to save it.");
    return;
  }

  document.getElementById("package-search").value = "";
  document.getElementById("trip-type").value = "All";

  const saved = packages.filter(p => favorites.has(p.id));
  document.getElementById("price-sort").value = "default";

  renderPackages();

  // Display only saved packages.
  document.getElementById("package-grid").innerHTML = saved.map(p => `
    <article class="package-card">
      <div class="package-image">
        <img src="https://images.unsplash.com/${p.image}?auto=format&fit=crop&w=800&q=85"
          alt="${p.destination}">
        <button class="favorite active" onclick="toggleFavorite(${p.id})">♥</button>
      </div>
      <div class="package-info">
        <div class="location">📍 ${p.destination}</div>
        <h3>${p.name}</h3>
        <p class="package-description">${p.description}</p>
        <div class="package-bottom">
          <div class="package-price">
            <small>Starting from / person</small>
            <strong>${money(p.price)}</strong>
          </div>
          <button class="book-button" onclick="openBooking(${p.id})">View & Book</button>
        </div>
      </div>
    </article>
  `).join("");

  document.getElementById("packages").scrollIntoView({behavior: "smooth"});
  showToast("Showing your saved trips.");
}

function scrollToPackages() {
  document.getElementById("packages").scrollIntoView({behavior: "smooth"});
}

function scrollToDestinations() {
  document.getElementById("destinations").scrollIntoView({behavior: "smooth"});
}

function selectDestination(name) {
  document.getElementById("destination-search").value = name;
  document.getElementById("package-search").value = name;
  document.getElementById("trip-type").value = "All";
  renderPackages();
  scrollToPackages();
}

function searchTrips() {
  const query = document.getElementById("destination-search").value.trim();

  document.getElementById("package-search").value = query;
  document.getElementById("trip-type").value = "All";
  renderPackages();
  scrollToPackages();

  if (query && !packages.some(p =>
    (p.name + " " + p.destination + " " + p.type)
      .toLowerCase().includes(query.toLowerCase()))) {
    showToast("No matching packages. Try another destination.");
  }
}

function openBooking(id) {
  selectedPackage = packages.find(p => p.id === id);

  document.getElementById("modal-title").textContent =
    "Book " + selectedPackage.name;

  document.getElementById("booking-summary").innerHTML =
    "<strong>" + selectedPackage.destination + "</strong><br>" +
    selectedPackage.days + " days · " + selectedPackage.type +
    "<br>Starting at " + money(selectedPackage.price) + " per person";

  const dateInput = document.getElementById("booking-date");
  const searchDate = document.getElementById("travel-date").value;

  dateInput.value = searchDate || "";
  dateInput.min = new Date().toLocaleDateString("en-CA");
  document.getElementById("booking-guests").value =
    document.getElementById("travelers").value;

  updateBookingTotal();

  document.getElementById("booking-modal").classList.add("open");
  document.body.style.overflow = "hidden";
}

function updateBookingTotal() {
  if (!selectedPackage) return;

  const guests = Number(document.getElementById("booking-guests").value);

  document.getElementById("booking-total").innerHTML =
    "<strong>Estimated package total: " +
    money(selectedPackage.price * guests) +
    "</strong><br><small>For " + guests +
    " traveler(s). Illustrative price only.</small>";
}

document.getElementById("booking-guests")
  .addEventListener("change", updateBookingTotal);

function closeBooking() {
  document.getElementById("booking-modal").classList.remove("open");
  document.body.style.overflow = "";
}

function backdropClose(event) {
  if (event.target.id === "booking-modal") closeBooking();
}

document.getElementById("booking-form").addEventListener("submit", function(event) {
  event.preventDefault();

  if (!selectedPackage) return;

  const name = document.getElementById("guest-name").value.trim();
  const email = document.getElementById("guest-email").value.trim();
  const date = document.getElementById("booking-date").value;
  const guests = Number(document.getElementById("booking-guests").value);

  if (!name || !email || !date) {
    showToast("Please complete all booking fields.");
    return;
  }

  if (date < new Date().toLocaleDateString("en-CA")) {
    showToast("Please choose today or a future travel date.");
    return;
  }

  const reference = "TD" + Date.now().toString().slice(-7);
  const total = selectedPackage.price * guests;

  closeBooking();

  alert(
    "TRAVEL DIARIES — DEMO BOOKING\n\n" +
    "Reference: " + reference + "\n" +
    "Traveler: " + name + "\n" +
    "Email: " + email + "\n" +
    "Destination: " + selectedPackage.destination + "\n" +
    "Travel date: " + date + "\n" +
    "Travelers: " + guests + "\n" +
    "Estimated total: " + money(total) + "\n\n" +
    "This is a demonstration only. No real booking has been created and no payment has been collected."
  );

  this.reset();
});

function showToast(message) {
  const toast = document.getElementById("toast");
  toast.textContent = message;
  toast.style.display = "block";

  clearTimeout(window.toastTimeout);
  window.toastTimeout = setTimeout(() => {
    toast.style.display = "none";
  }, 2800);
}

// Set minimum date to today for the travel search.
const today = new Date();
const localToday = new Date(
  today.getTime() - today.getTimezoneOffset() * 60000
).toISOString().slice(0, 10);

document.getElementById("travel-date").min = localToday;
document.getElementById("booking-date").min = localToday;

renderPackages();
</script>

</body>
</html>
