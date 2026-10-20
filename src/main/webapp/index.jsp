
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop | Shopping Made Simple</title>

<style>
:root {
    --primary: #28264f;
    --accent: #7158e8;
    --accent-light: #efecff;
    --bg: #f7f8fc;
    --text: #282b42;
    --muted: #777d91;
    --border: #e8e9f1;
    --white: #fff;
    --green: #16866b;
}

* { box-sizing: border-box; }

body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background: var(--bg);
    color: var(--text);
}

button, input, select { font: inherit; }
button, a { -webkit-tap-highlight-color: transparent; }
a { text-decoration: none; color: inherit; }
button { cursor: pointer; }

header {
    position: sticky;
    top: 0;
    z-index: 10;
    background: white;
    box-shadow: 0 2px 15px #2527470c;
}

.topbar {
    max-width: 1250px;
    min-height: 76px;
    padding: 14px 24px;
    margin: auto;
    display: flex;
    align-items: center;
    gap: 25px;
}

.logo {
    font-size: 25px;
    font-weight: 850;
    letter-spacing: -1px;
    white-space: nowrap;
    color: var(--primary);
}

.logo span { color: var(--accent); }

.search {
    display: flex;
    flex: 1;
    max-width: 530px;
    background: var(--bg);
    border: 1px solid var(--border);
    border-radius: 12px;
    overflow: hidden;
}

.search input {
    width: 100%;
    min-width: 0;
    padding: 13px 15px;
    border: none;
    outline: none;
    background: transparent;
}

.search button {
    border: none;
    padding: 0 16px;
    background: var(--accent-light);
    color: var(--accent);
}

.header-actions {
    display: flex;
    gap: 10px;
    margin-left: auto;
}

.header-actions button {
    border: 0;
    background: white;
    color: var(--primary);
    padding: 10px;
    border-radius: 10px;
    font-weight: 650;
}

.header-actions button:hover { background: var(--accent-light); }

nav {
    border-top: 1px solid var(--border);
    overflow-x: auto;
}

.nav-inner {
    max-width: 1250px;
    margin: auto;
    padding: 8px 24px;
    display: flex;
    gap: 10px;
}

.nav-inner button {
    border: none;
    background: white;
    color: var(--muted);
    padding: 9px 16px;
    border-radius: 9px;
    white-space: nowrap;
}

.nav-inner button:hover,
.nav-inner button.active {
    color: var(--accent);
    background: var(--accent-light);
}

main {
    max-width: 1250px;
    padding: 0 24px;
    margin: auto;
}

.hero {
    min-height: 390px;
    margin: 28px 0 42px;
    padding: 55px;
    display: flex;
    align-items: center;
    border-radius: 24px;
    color: white;
    overflow: hidden;
    background:
        linear-gradient(90deg, #201d51f2 0%, #30286bc9 48%, #30286b35 100%),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
        center/cover;
}

.hero-content { max-width: 570px; }

.eyebrow {
    color: #d9d0ff;
    text-transform: uppercase;
    font-size: 12px;
    letter-spacing: 2px;
    font-weight: 800;
}

.hero h1 {
    margin: 14px 0;
    font-size: clamp(36px, 5vw, 56px);
    line-height: 1.12;
    letter-spacing: -1.5px;
}

.hero p {
    max-width: 440px;
    color: #e5e3f5;
    line-height: 1.8;
}

.primary-btn {
    border: none;
    border-radius: 11px;
    background: var(--accent);
    color: white;
    padding: 13px 20px;
    font-weight: 750;
    transition: .2s;
}

.primary-btn:hover {
    background: #5942d3;
    transform: translateY(-2px);
}

.hero .primary-btn {
    margin-top: 15px;
    background: white;
    color: var(--primary);
}

.section-heading {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 15px;
    margin-bottom: 20px;
}

.section-heading h2 {
    margin: 0;
    font-size: 27px;
    letter-spacing: -.6px;
}

.section-heading p {
    margin: 5px 0 0;
    color: var(--muted);
    font-size: 14px;
}

.categories {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 18px;
    margin-bottom: 42px;
}

.category {
    padding: 0;
    overflow: hidden;
    text-align: left;
    background: white;
    border: 1px solid var(--border);
    border-radius: 16px;
    transition: .25s;
}

.category:hover {
    transform: translateY(-4px);
    box-shadow: 0 10px 28px #28264f12;
}

.category img {
    width: 100%;
    height: 155px;
    object-fit: cover;
}

.category strong {
    display: block;
    padding: 13px 15px 2px;
    font-size: 15px;
}

.category span {
    display: block;
    padding: 0 15px 14px;
    color: var(--muted);
    font-size: 12px;
}

.shop-toolbar {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    margin-bottom: 20px;
}

.shop-toolbar select {
    padding: 10px 12px;
    background: white;
    border: 1px solid var(--border);
    border-radius: 10px;
    color: var(--text);
}

.products {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 20px;
}

.product {
    min-width: 0;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    background: white;
    border: 1px solid var(--border);
    border-radius: 17px;
    transition: .25s;
}

.product:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 30px #28264f12;
}

.product-image {
    position: relative;
    background: #f1f2f8;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 220px;
    object-fit: cover;
    transition: .4s;
}

.product:hover .product-image img { transform: scale(1.05); }

.badge {
    position: absolute;
    top: 12px;
    left: 12px;
    padding: 5px 9px;
    border-radius: 7px;
    background: white;
    color: var(--green);
    font-size: 11px;
    font-weight: 800;
}

.product-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    padding: 15px;
}

.product-info .category-name {
    color: var(--muted);
    font-size: 12px;
}

.product-info h3 {
    margin: 6px 0;
    font-size: 15px;
    line-height: 1.5;
}

.rating {
    color: #a66d08;
    font-size: 12px;
}

.price-row {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 7px;
    margin: 12px 0;
}

.price {
    font-size: 20px;
    font-weight: 800;
}

.old-price {
    color: #a0a2b2;
    font-size: 12px;
    text-decoration: line-through;
}

.discount {
    color: var(--green);
    font-size: 11px;
    font-weight: 800;
}

.product-bottom {
    display: flex;
    gap: 8px;
    margin-top: auto;
}

.add-btn {
    flex: 1;
    padding: 11px 7px;
    border: 0;
    border-radius: 10px;
    background: var(--accent-light);
    color: var(--accent);
    font-size: 12px;
    font-weight: 800;
}

.add-btn:hover { background: var(--accent); color: white; }

.wish-btn {
    width: 40px;
    border: 1px solid var(--border);
    border-radius: 10px;
    background: white;
    font-size: 18px;
}

.wish-btn.active { color: #e04469; background: #fff0f3; }

.no-results {
    display: none;
    padding: 40px;
    text-align: center;
    color: var(--muted);
    background: white;
    border-radius: 16px;
    margin-top: 20px;
}

.benefits {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 18px;
    margin: 48px 0;
}

.benefit {
    padding: 23px;
    background: white;
    border: 1px solid var(--border);
    border-radius: 15px;
}

.benefit .emoji { font-size: 26px; }
.benefit h3 { margin: 10px 0 5px; font-size: 16px; }
.benefit p { margin: 0; color: var(--muted); font-size: 13px; }

.newsletter {
    margin: 40px 0;
    padding: 35px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
    border-radius: 20px;
    background: linear-gradient(120deg, #29264f, #7158e8);
    color: white;
}

.newsletter h2 { margin: 0 0 7px; }
.newsletter p { margin: 0; color: #e0ddfa; }

.newsletter form {
    display: flex;
    max-width: 430px;
    width: 100%;
    gap: 8px;
}

.newsletter input {
    min-width: 0;
    flex: 1;
    padding: 12px;
    border: none;
    border-radius: 9px;
}

.newsletter button {
    background: white;
    color: var(--primary);
}

footer {
    margin-top: 50px;
    padding: 40px 24px 20px;
    background: #22213f;
    color: #d8d8e8;
}

.footer-grid {
    max-width: 1200px;
    margin: auto;
    display: grid;
    grid-template-columns: 2fr 1fr 1fr;
    gap: 35px;
}

footer h3, footer h4 { color: white; }
footer p, footer a { color: #bfc0d5; font-size: 13px; }
footer a { display: block; margin: 9px 0; }
footer a:hover { color: white; }

.copyright {
    max-width: 1200px;
    margin: 30px auto 0;
    padding-top: 18px;
    border-top: 1px solid #ffffff20;
    text-align: center;
    font-size: 12px;
    color: #bfc0d5;
}

/* CART DRAWER */

.overlay {
    position: fixed;
    inset: 0;
    z-index: 20;
    background: #17172a80;
    opacity: 0;
    visibility: hidden;
    transition: .25s;
}

.overlay.open { opacity: 1; visibility: visible; }

.cart-drawer {
    position: fixed;
    z-index: 21;
    top: 0;
    right: 0;
    width: min(420px, 100%);
    height: 100dvh;
    padding: 24px;
    display: flex;
    flex-direction: column;
    background: white;
    transform: translateX(100%);
    transition: .3s;
}

.cart-drawer.open { transform: translateX(0); }

.cart-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid var(--border);
}

.cart-header h2 { font-size: 22px; }

.close-btn {
    width: 40px;
    height: 40px;
    border: 0;
    border-radius: 10px;
    background: var(--bg);
    font-size: 22px;
}

.cart-list { flex: 1; overflow-y: auto; }

.cart-row {
    display: grid;
    grid-template-columns: 65px minmax(0, 1fr);
    gap: 12px;
    padding: 16px 0;
    border-bottom: 1px solid var(--border);
}

.cart-row img {
    width: 65px;
    height: 75px;
    object-fit: cover;
    border-radius: 9px;
}

.cart-row h4 { margin: 0 0 5px; }
.cart-row p { margin: 0 0 8px; color: var(--muted); font-size: 13px; }

.quantity {
    display: inline-flex;
    align-items: center;
    gap: 12px;
}

.quantity button {
    width: 28px;
    height: 28px;
    border: 1px solid var(--border);
    border-radius: 7px;
    background: white;
}

.cart-footer {
    padding-top: 18px;
    border-top: 1px solid var(--border);
}

.cart-total {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
    font-size: 19px;
    font-weight: 800;
}

.toast {
    position: fixed;
    z-index: 30;
    bottom: 24px;
    left: 50%;
    transform: translate(-50%, 20px);
    opacity: 0;
    pointer-events: none;
    padding: 13px 20px;
    border-radius: 12px;
    background: #22213f;
    color: white;
    box-shadow: 0 5px 25px #0002;
    transition: .25s;
}

.toast.show { opacity: 1; transform: translate(-50%, 0); }

@media (max-width: 1000px) {
    .products { grid-template-columns: repeat(3, minmax(0, 1fr)); }
    .categories { grid-template-columns: repeat(2, minmax(0, 1fr)); }
    .hero { padding: 38px; }
}

@media (max-width: 700px) {
    .topbar { flex-wrap: wrap; gap: 10px; padding: 12px 16px; }
    .logo { font-size: 22px; }
    .search { order: 3; flex: 1 0 100%; max-width: none; }
    .header-actions { margin-left: auto; }
    .header-actions button { padding: 8px; font-size: 12px; }
    .nav-inner { padding: 8px 14px; }
    main { padding: 0 14px; }
    .hero { min-height: 340px; margin: 20px 0 30px; padding: 25px; border-radius: 17px; }
    .hero h1 { font-size: 36px; }
    .products { grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 11px; }
    .product-image img { height: 165px; }
    .product-info { padding: 11px; }
    .product-info h3 { font-size: 13px; }
    .price { font-size: 17px; }
    .product-bottom { gap: 5px; }
    .add-btn { font-size: 11px; }
    .wish-btn { width: 35px; }
    .category img { height: 120px; }
    .categories { gap: 11px; }
    .benefits { grid-template-columns: 1fr; gap: 12px; margin: 30px 0; }
    .newsletter { align-items: stretch; flex-direction: column; padding: 24px; }
    .newsletter form { flex-direction: column; }
    .newsletter button { min-height: 43px; }
    .footer-grid { grid-template-columns: 1fr 1fr; gap: 20px; }
    .footer-grid > :first-child { grid-column: 1 / -1; }
}

@media (max-width: 360px) {
    .hero h1 { font-size: 30px; }
    .product-image img { height: 135px; }
    .section-heading h2 { font-size: 22px; }
}
</style>
</head>

<body>

<header>
    <div class="topbar">
        <a href="#" class="logo">Nexus<span>Shop.</span></a>

        <form class="search" id="searchForm">
            <input id="searchInput" type="search"
                   placeholder="Search products, brands and more..."
                   aria-label="Search products">
            <button type="submit" aria-label="Search">⌕</button>
        </form>

        <div class="header-actions">
            <button type="button" id="wishlistHeader">♡ Wishlist</button>
            <button type="button" id="openCart">🛒 Cart <span id="cartCount">0</span></button>
        </div>
    </div>

    <nav aria-label="Product categories">
        <div class="nav-inner" id="categoryNav">
            <button class="active" data-category="All">All Products</button>
            <button data-category="Fashion">Fashion</button>
            <button data-category="Electronics">Electronics</button>
            <button data-category="Home">Home & Living</button>
            <button data-category="Beauty">Beauty</button>
            <button data-category="Accessories">Accessories</button>
        </div>
    </nav>
</header>

<main>
    <section class="hero">
        <div class="hero-content">
            <div class="eyebrow">Your everyday shopping destination</div>
            <h1>Find your next favorite thing.</h1>
            <p>Discover stylish essentials, smart gadgets and beautiful finds at prices you'll love.</p>
            <button class="primary-btn" id="shopNow">Explore Collection →</button>
        </div>
    </section>

    <section>
        <div class="section-heading">
            <div>
                <h2>Shop by category</h2>
                <p>Find exactly what you're looking for.</p>
            </div>
        </div>

        <div class="categories">
            <button class="category" data-pick="Fashion">
                <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=600&q=80" alt="Fashion clothing">
                <strong>Fashion</strong>
                <span>Everyday style</span>
            </button>
            <button class="category" data-pick="Electronics">
                <img src="https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=600&q=80" alt="Electronic gadgets">
                <strong>Electronics</strong>
                <span>Upgrade your tech</span>
            </button>
            <button class="category" data-pick="Home">
                <img src="https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?auto=format&fit=crop&w=600&q=80" alt="Modern home decor">
                <strong>Home & Living</strong>
                <span>Make yourself at home</span>
            </button>
            <button class="category" data-pick="Beauty">
                <img src="https://images.unsplash.com/photo-1596462502278-27bfdc403348?auto=format&fit=crop&w=600&q=80" alt="Beauty products">
                <strong>Beauty</strong>
                <span>Your self-care favorites</span>
            </button>
        </div>
    </section>

    <section id="shop">
        <div class="section-heading">
            <div>
                <h2>Popular right now</h2>
                <p>Handpicked finds for your everyday life.</p>
            </div>
        </div>

        <div class="shop-toolbar">
            <span id="resultCount" aria-live="polite">Showing all products</span>
            <select id="sortSelect" aria-label="Sort products">
                <option value="featured">Featured products</option>
                <option value="low">Price: Low to High</option>
                <option value="high">Price: High to Low</option>
                <option value="name">Name: A to Z</option>
            </select>
        </div>

        <div class="products" id="productGrid"></div>

        <div class="no-results" id="noResults">
            <h3>No products found</h3>
            <p>Try a different search or category.</p>
            <button class="primary-btn" id="clearSearch">Show all products</button>
        </div>
    </section>

    <section class="benefits">
        <div class="benefit">
            <div class="emoji">🚚</div>
            <h3>Convenient delivery</h3>
            <p>A simple shopping experience from browsing to delivery.</p>
        </div>
        <div class="benefit">
            <div class="emoji">🔒</div>
            <h3>Shop with confidence</h3>
            <p>A clean, straightforward experience for every shopper.</p>
        </div>
        <div class="benefit">
            <div class="emoji">💬</div>
            <h3>We're here to help</h3>
            <p>Make finding your next favorite product easy.</p>
        </div>
    </section>

    <section class="newsletter">
        <div>
            <h2>A little something for your inbox.</h2>
            <p>Sign up for updates and new arrivals.</p>
        </div>
        <form id="newsletterForm">
            <input type="email" placeholder="Enter your email address"
                   aria-label="Email address" required>
            <button type="submit" class="primary-btn">Subscribe</button>
        </form>
    </section>
</main>

<footer>
    <div class="footer-grid">
        <div>
            <a href="#" class="logo" style="color:white">Nexus<span>Shop.</span></a>
            <p>Your everyday destination for things you'll love. Explore, discover and shop with ease.</p>
        </div>
        <div>
            <h4>Explore</h4>
            <a href="#shop">All products</a>
            <a href="#shop" data-footer-category="Fashion">Fashion</a>
            <a href="#shop" data-footer-category="Electronics">Electronics</a>
            <a href="#shop" data-footer-category="Home">Home & Living</a>
        </div>
        <div>
            <h4>Customer care</h4>
            <a href="mailto:support@example.com">Contact us</a>
            <a href="#shop">Browse products</a>
            <a href="#top">Back to top ↑</a>
        </div>
    </div>
    <div class="copyright">
        © 2026 NexusShop. Demo shopping experience.
    </div>
</footer>

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer"
       role="dialog" aria-modal="true" aria-label="Shopping cart"
       aria-hidden="true">
    <div class="cart-header">
        <h2>Your Cart 🛒</h2>
        <button class="close-btn" id="closeCart" aria-label="Close cart">×</button>
    </div>

    <div class="cart-list" id="cartList"></div>

    <div class="cart-footer">
        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">₹0</span>
        </div>
        <button class="primary-btn" style="width:100%" id="checkoutBtn">
            Continue to Checkout
        </button>
        <p style="font-size:11px;color:#777d91;text-align:center">
            Demo only. No payment will be processed.
        </p>
    </div>
</aside>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>
const products = [
    {
        id: 1, name: "Classic Everyday Sneakers", category: "Fashion",
        price: 1499, old: 2199, rating: "4.8",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80",
        badge: "BESTSELLER"
    },
    {
        id: 2, name: "Premium Wireless Headphones", category: "Electronics",
        price: 2499, old: 3999, rating: "4.7",
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80",
        badge: "POPULAR"
    },
    {
        id: 3, name: "Minimal Everyday Watch", category: "Accessories",
        price: 1899, old: 2799, rating: "4.6",
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80",
        badge: "TRENDING"
    },
    {
        id: 4, name: "Modern Table Lamp", category: "Home",
        price: 1199, old: 1699, rating: "4.5",
        image: "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=80",
        badge: "GREAT VALUE"
    },
    {
        id: 5, name: "Everyday Travel Backpack", category: "Accessories",
        price: 999, old: 1499, rating: "4.6",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80",
        badge: "SALE"
    },
    {
        id: 6, name: "Skincare Essentials Set", category: "Beauty",
        price: 799, old: 1199, rating: "4.8",
        image: "https://images.unsplash.com/photo-1608248543803-ba4f8c70ae0b?auto=format&fit=crop&w=700&q=80",
        badge: "POPULAR"
    },
    {
        id: 7, name: "Soft Cotton Casual Shirt", category: "Fashion",
        price: 899, old: 1299, rating: "4.4",
        image: "https://images.unsplash.com/photo-1596755094514-f87e34085b2c?auto=format&fit=crop&w=700&q=80",
        badge: "NEW"
    },
    {
        id: 8, name: "Compact Wireless Speaker", category: "Electronics",
        price: 1599, old: 2299, rating: "4.7",
        image: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=700&q=80",
        badge: "SALE"
    }
];

let selectedCategory = "All";
let searchTerm = "";
let cart = [];
let wishlist = new Set();

const grid = document.getElementById("productGrid");
const cartDrawer = document.getElementById("cartDrawer");
const overlay = document.getElementById("overlay");

const money = amount =>
    new Intl.NumberFormat("en-IN", {
        style: "currency",
        currency: "INR",
        maximumFractionDigits: 0
    }).format(amount);

function escapeHTML(value) {
    return String(value).replace(/[&<>"']/g, char => ({
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': "&quot;",
        "'": "&#39;"
    })[char]);
}

function renderProducts() {
    let list = products.filter(product => {
        const matchesCategory =
            selectedCategory === "All" ||
            product.category === selectedCategory;

        const matchesSearch =
            (product.name + " " + product.category)
            .toLowerCase().includes(searchTerm.toLowerCase());

        const matchesWishlist =
            !showWishlist || wishlist.has(product.id);

        return matchesCategory && matchesSearch && matchesWishlist;
    });

    const sort = document.getElementById("sortSelect").value;

    if (sort === "low") list.sort((a, b) => a.price - b.price);
    if (sort === "high") list.sort((a, b) => b.price - a.price);
    if (sort === "name") list.sort((a, b) => a.name.localeCompare(b.name));

    grid.innerHTML = list.map(product => {
        const discount = Math.round(
            (1 - product.price / product.old) * 100
        );

        return `
            <article class="product">
                <div class="product-image">
                    <img src="${product.image}"
                         alt="${escapeHTML(product.name)}"
                         loading="lazy">
                    <span class="badge">${escapeHTML(product.badge)}</span>
                </div>

                <div class="product-info">
                    <span class="category-name">${escapeHTML(product.category)}</span>
                    <h3>${escapeHTML(product.name)}</h3>
                    <div class="rating">★ ${product.rating} · Customer rating</div>

                    <div class="price-row">
                        <span class="price">${money(product.price)}</span>
                        <span class="old-price">${money(product.old)}</span>
                        <span class="discount">${discount}% OFF</span>
                    </div>

                    <div class="product-bottom">
                        <button class="add-btn" data-add="${product.id}">
                            + Add to Cart
                        </button>
                        <button class="wish-btn ${wishlist.has(product.id) ? "active" : ""}"
                                data-wish="${product.id}"
                                aria-label="Toggle wishlist for ${escapeHTML(product.name)}">
                            ${wishlist.has(product.id) ? "♥" : "♡"}
                        </button>
                    </div>
                </div>
            </article>`;
    }).join("");

    document.getElementById("resultCount").textContent =
        `Showing ${list.length} product${list.length === 1 ? "" : "s"}`;

    document.getElementById("noResults").style.display =
        list.length ? "none" : "block";
}

let showWishlist = false;

function selectCategory(category) {
    selectedCategory = category;
    showWishlist = false;

    document.querySelectorAll("#categoryNav button").forEach(button => {
        button.classList.toggle(
            "active",
            button.dataset.category === category
        );
    });

    renderProducts();
}

document.getElementById("categoryNav").addEventListener("click", event => {
    const button = event.target.closest("button[data-category]");
    if (button) selectCategory(button.dataset.category);
});

document.querySelectorAll("[data-pick]").forEach(button => {
    button.addEventListener("click", () => {
        selectCategory(button.dataset.pick);
        document.getElementById("shop").scrollIntoView({ behavior: "smooth" });
    });
});

document.querySelectorAll("[data-footer-category]").forEach(link => {
    link.addEventListener("click", () => {
        selectCategory(link.dataset.footerCategory);
    });
});

document.getElementById("searchForm").addEventListener("submit", event => {
    event.preventDefault();
    searchTerm = document.getElementById("searchInput").value.trim();
    showWishlist = false;
    renderProducts();
    document.getElementById("shop").scrollIntoView({ behavior: "smooth" });
});

document.getElementById("searchInput").addEventListener("input", event => {
    searchTerm = event.target.value.trim();
    showWishlist = false;
    renderProducts();
});

document.getElementById("sortSelect").addEventListener("change", renderProducts);

document.getElementById("clearSearch").addEventListener("click", () => {
    searchTerm = "";
    selectedCategory = "All";
    showWishlist = false;
    document.getElementById("searchInput").value = "";
    selectCategory("All");
});

document.getElementById("shopNow").addEventListener("click", () => {
    document.getElementById("shop").scrollIntoView({ behavior: "smooth" });
});

document.getElementById("wishlistHeader").addEventListener("click", () => {
    showWishlist = !showWishlist;
    searchTerm = "";
    document.getElementById("searchInput").value = "";
    selectedCategory = "All";

    document.querySelectorAll("#categoryNav button").forEach(button => {
        button.classList.toggle(button.dataset.category === "All", button.dataset.category === "All");
    });

    renderProducts();
    document.getElementById("shop").scrollIntoView({ behavior: "smooth" });
    showToast(showWishlist ? "Showing your wishlist" : "Showing all products");
});

grid.addEventListener("click", event => {
    const addButton = event.target.closest("[data-add]");
    const wishButton = event.target.closest("[data-wish]");

    if (addButton) {
        addToCart(Number(addButton.dataset.add));
    }

    if (wishButton) {
        const id = Number(wishButton.dataset.wish);

        if (wishlist.has(id)) {
            wishlist.delete(id);
            showToast("Removed from wishlist");
        } else {
            wishlist.add(id);
            showToast("Added to wishlist ♥");
        }

        renderProducts();
    }
});

function addToCart(id) {
    const existing = cart.find(item => item.id === id);

    if (existing) existing.quantity++;
    else cart.push({ id, quantity: 1 });

    renderCart();
    showToast("Added to your cart!");
}

function renderCart() {
    const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);

    document.getElementById("cartCount").textContent = totalItems;

    document.getElementById("cartTotal").textContent = money(
        cart.reduce((sum, item) => {
            const product = products.find(p => p.id === item.id);
            return sum + product.price * item.quantity;
        }, 0)
    );

    const cartList = document.getElementById("cartList");

    if (!cart.length) {
        cartList.innerHTML = `
            <div style="text-align:center;padding:45px 10px">
                <div style="font-size:45px">🛍️</div>
                <h3>Your cart is waiting</h3>
                <p style="color:#777d91">Add something you love to get started.</p>
                <button class="primary-btn" id="continueShopping">Explore Products</button>
            </div>`;
        return;
    }

    cartList.innerHTML = cart.map(item => {
        const product = products.find(p => p.id === item.id);

        return `
            <div class="cart-row">
                <img src="${product.image}" alt="${escapeHTML(product.name)}">
                <div>
                    <h4>${escapeHTML(product.name)}</h4>
                    <p>${money(product.price)} each</p>
                    <div class="quantity">
                        <button data-quantity="${product.id}" data-change="-1"
                                aria-label="Decrease quantity">−</button>
                        <span>${item.quantity}</span>
                        <button data-quantity="${product.id}" data-change="1"
                                aria-label="Increase quantity">+</button>
                        <button data-remove="${product.id}"
                                style="border:0;background:white;color:#d84b5b">
                            Remove
                        </button>
                    </div>
                </div>
            </div>`;
    }).join("");
}

document.getElementById("cartList").addEventListener("click", event => {
    if (event.target.closest("#continueShopping")) {
        closeCart();
        document.getElementById("shop").scrollIntoView({ behavior: "smooth" });
        return;
    }

    const quantityButton = event.target.closest("[data-quantity]");
    const removeButton = event.target.closest("[data-remove]");

    if (quantityButton) {
        const id = Number(quantityButton.dataset.quantity);
        const item = cart.find(item => item.id === id);
        if (!item) return;

        item.quantity += Number(quantityButton.dataset.change);
        cart = cart.filter(item => item.quantity > 0);
        renderCart();
    }

    if (removeButton) {
        const id = Number(removeButton.dataset.remove);
        cart = cart.filter(item => item.id !== id);
        renderCart();
        showToast("Item removed");
    }
});

function openCart() {
    cartDrawer.classList.add("open");
    overlay.classList.add("open");
    cartDrawer.setAttribute("aria-hidden", "false");
    document.getElementById("closeCart").focus();
}

function closeCart() {
    cartDrawer.classList.remove("open");
    overlay.classList.remove("open");
    cartDrawer.setAttribute("aria-hidden", "true");
    document.getElementById("openCart").focus();
}

document.getElementById("openCart").addEventListener("click", openCart);
document.getElementById("closeCart").addEventListener("click", closeCart);
overlay.addEventListener("click", closeCart);

document.addEventListener("keydown", event => {
    if (event.key === "Escape" && cartDrawer.classList.contains("open")) {
        closeCart();
    }
});

document.getElementById("checkoutBtn").addEventListener("click", () => {
    if (!cart.length) {
        showToast("Your cart is empty!");
        return;
    }

    showToast("Demo checkout — connect your backend to place orders.");
});

document.getElementById("newsletterForm").addEventListener("submit", event => {
    event.preventDefault();
    showToast("Demo subscription submitted!");
    event.target.reset();
});

let toastTimer;

function showToast(message) {
    const toast = document.getElementById("toast");
    toast.textContent = message;
    toast.classList.add("show");

    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove("show"), 2600);
}

renderProducts();
renderCart();
</script>

</body>
</html>
