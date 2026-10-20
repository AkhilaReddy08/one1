
/* =========================================================
   NEXUSSHOP — COMPLETE MODERN, USER-FRIENDLY SHOPPING UI
   Responsive | Accessible | Clean | Desktop + Mobile
   ========================================================= */

:root {
    --bg: #f7f8fc;
    --white: #ffffff;
    --surface: #f1f3f9;
    --surface-hover: #e9ecf5;

    --primary: #252747;
    --primary-light: #42456f;
    --accent: #6957e8;
    --accent-hover: #5341d2;
    --accent-soft: #eeebff;

    --text: #292d42;
    --muted: #777e92;
    --border: #e6e8f0;

    --success: #138568;
    --success-bg: #e5f7f0;
    --danger: #d84b5b;
    --danger-bg: #fff0f1;
    --warning: #a66c08;
    --warning-bg: #fff5d9;

    --radius-sm: 10px;
    --radius: 16px;
    --radius-lg: 24px;

    --shadow-sm: 0 2px 10px rgba(35, 39, 71, 0.045);
    --shadow: 0 8px 28px rgba(35, 39, 71, 0.075);
    --shadow-lg: 0 16px 40px rgba(35, 39, 71, 0.12);

    --transition: 0.25s ease;
    --content-width: 1240px;
}

/* =============== RESET & BASE =============== */

* {
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
    scroll-padding-top: 100px;
}

body {
    margin: 0;
    min-height: 100vh;
    background: var(--bg);
    color: var(--text);
    font-family: Inter, "Segoe UI", Roboto, Arial, sans-serif;
    font-size: 15px;
    line-height: 1.65;
    -webkit-font-smoothing: antialiased;
}

img {
    display: block;
    max-width: 100%;
}

button,
input,
select,
textarea {
    font: inherit;
}

button,
a,
input,
select,
textarea {
    -webkit-tap-highlight-color: transparent;
}

a {
    color: var(--accent);
    text-decoration: none;
    transition: color var(--transition);
}

a:hover {
    color: var(--accent-hover);
}

button {
    cursor: pointer;
}

button:disabled {
    cursor: not-allowed;
    opacity: 0.55;
}

::selection {
    background: var(--accent-soft);
    color: var(--primary);
}

:focus-visible {
    outline: 3px solid rgba(105, 87, 232, 0.55);
    outline-offset: 3px;
}

/* =============== PAGE LAYOUT =============== */

main,
.main-content,
.container,
.page-container {
    width: min(calc(100% - 40px), var(--content-width));
    margin-right: auto;
    margin-left: auto;
}

section {
    margin-bottom: 38px;
}

.section-title {
    margin: 0 0 8px;
    color: var(--primary);
    font-size: clamp(22px, 3vw, 30px);
    font-weight: 750;
    letter-spacing: -0.7px;
}

.section-subtitle {
    margin: 0 0 22px;
    color: var(--muted);
    font-size: 14px;
}

hr {
    border: 0;
    border-top: 1px solid var(--border);
    margin: 24px 0;
}

/* =============== HEADER =============== */

header {
    position: sticky;
    top: 0;
    z-index: 1000;
    background: rgba(255, 255, 255, 0.96);
    border-bottom: 1px solid var(--border);
    box-shadow: var(--shadow-sm);
    backdrop-filter: blur(16px);
}

.header-inner,
.header-content {
    width: min(calc(100% - 40px), var(--content-width));
    min-height: 76px;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 24px;
}

.brand {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    color: var(--primary);
    font-size: 24px;
    font-weight: 850;
    letter-spacing: -1px;
    white-space: nowrap;
}

.brand i,
.brand .accent,
.brand span {
    color: var(--accent);
}

.brand img {
    width: auto;
    max-width: 145px;
    max-height: 48px;
    object-fit: contain;
}

header .search-box,
.header-search {
    display: flex;
    flex: 1;
    max-width: 480px;
    align-items: center;
    gap: 10px;
    padding: 0 15px;
    background: var(--bg);
    border: 1px solid var(--border);
    border-radius: 13px;
    transition: border-color var(--transition),
                box-shadow var(--transition);
}

header .search-box:focus-within,
.header-search:focus-within {
    border-color: var(--accent);
    box-shadow: 0 0 0 4px rgba(105, 87, 232, 0.09);
}

.search-box input,
.header-search input {
    width: 100%;
    min-width: 0;
    height: 46px;
    padding: 0;
    border: 0;
    outline: none;
    background: transparent;
    box-shadow: none;
}

.search-box input:focus,
.header-search input:focus {
    outline: none;
    box-shadow: none;
}

.search-box button,
.header-search button {
    flex-shrink: 0;
    padding: 8px;
    border: 0;
    background: transparent;
    color: var(--muted);
}

.header-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.header-actions a,
.header-actions button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    min-height: 42px;
    padding: 9px 12px;
    border: 1px solid transparent;
    border-radius: 11px;
    background: transparent;
    color: var(--primary);
    font-weight: 650;
}

.header-actions a:hover,
.header-actions button:hover {
    background: var(--accent-soft);
    color: var(--accent-hover);
}

/* =============== NAVIGATION =============== */

nav.main-nav {
    background: var(--white);
    border-top: 1px solid #f0f1f6;
}

nav.main-nav ul {
    width: min(calc(100% - 40px), var(--content-width));
    min-height: 48px;
    margin: auto;
    padding: 0;
    display: flex;
    align-items: center;
    gap: 8px;
    list-style: none;
}

nav.main-nav li a {
    display: block;
    padding: 9px 15px;
    border-radius: 10px;
    color: #626980;
    font-size: 14px;
    font-weight: 600;
    white-space: nowrap;
}

nav.main-nav li a:hover,
nav.main-nav li a.active,
nav.main-nav li.active a {
    background: var(--accent-soft);
    color: var(--accent-hover);
}

/* =============== BUTTONS =============== */

.btn,
button.btn,
.btn-primary,
.btn-secondary,
button[type="submit"] {
    display: inline-flex;
    min-height: 44px;
    align-items: center;
    justify-content: center;
    gap: 9px;
    padding: 11px 20px;
    border: 1px solid transparent;
    border-radius: 12px;
    font-weight: 700;
    text-align: center;
    text-decoration: none;
    transition: background var(--transition),
                color var(--transition),
                border-color var(--transition),
                transform var(--transition),
                box-shadow var(--transition);
}

.btn-primary,
button[type="submit"] {
    background: var(--accent);
    color: #fff;
    box-shadow: 0 4px 12px rgba(105, 87, 232, 0.17);
}

.btn-primary:hover,
button[type="submit"]:hover {
    transform: translateY(-1px);
    background: var(--accent-hover);
    color: #fff;
    box-shadow: 0 7px 18px rgba(105, 87, 232, 0.23);
}

.btn-secondary {
    background: var(--white);
    color: var(--primary);
    border-color: var(--border);
}

.btn-secondary:hover {
    background: var(--surface);
    border-color: #d3d6e4;
}

.btn-danger {
    background: var(--danger-bg);
    color: var(--danger);
    border: 1px solid #ffdbdf;
}

.btn-danger:hover {
    background: var(--danger);
    color: #fff;
}

.btn-block {
    width: 100%;
}

.btn-sm {
    min-height: 35px;
    padding: 7px 12px;
    font-size: 13px;
    border-radius: 9px;
}

/* =============== HERO / BANNER =============== */

.hero {
    position: relative;
    isolation: isolate;
    display: flex;
    min-height: 390px;
    align-items: center;
    overflow: hidden;
    margin: 28px auto 42px;
    padding: clamp(28px, 6vw, 68px);
    border-radius: var(--radius-lg);
    background: #302a65;
    box-shadow: var(--shadow-lg);
    color: white;
}

.hero::before {
    position: absolute;
    z-index: -2;
    inset: 0;
    content: "";
    background-image: url(
        "https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85"
    );
    background-position: center;
    background-size: cover;
}

.hero::after {
    position: absolute;
    z-index: -1;
    inset: 0;
    content: "";
    background: linear-gradient(
        90deg,
        rgba(28, 25, 67, 0.94) 0%,
        rgba(43, 35, 100, 0.76) 52%,
        rgba(43, 35, 100, 0.16) 100%
    );
}

.hero-content {
    width: 100%;
    max-width: 610px;
}

.hero h1 {
    margin: 0 0 18px;
    color: #fff;
    font-size: clamp(32px, 5vw, 56px);
    font-weight: 850;
    line-height: 1.13;
    letter-spacing: -1.6px;
}

.hero p {
    max-width: 500px;
    margin: 0 0 27px;
    color: rgba(255, 255, 255, 0.86);
    font-size: 17px;
}

.hero .btn-primary {
    min-height: 49px;
    padding: 13px 24px;
    background: white;
    color: var(--accent-hover);
    box-shadow: none;
}

.hero .btn-primary:hover {
    background: var(--accent-soft);
    transform: translateY(-2px);
}

.hero .btn-secondary {
    background: rgba(255, 255, 255, 0.12);
    border-color: rgba(255, 255, 255, 0.45);
    color: white;
}

/* =============== CATEGORY GRID =============== */

.category-grid,
.categories-grid {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 20px;
}

.cat-card,
.category-card {
    min-width: 0;
    overflow: hidden;
    padding: 0;
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
    transition: transform var(--transition),
                box-shadow var(--transition),
                border-color var(--transition);
}

.cat-card:hover,
.category-card:hover {
    transform: translateY(-4px);
    border-color: #d4ccff;
    box-shadow: var(--shadow);
}

.cat-card img,
.category-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    background: var(--surface);
    transition: transform 0.4s ease;
}

.cat-card:hover img,
.category-card:hover img {
    transform: scale(1.04);
}

.cat-card h3,
.category-card h3 {
    margin: 0;
    padding: 15px 16px 3px;
    color: var(--primary);
    font-size: 16px;
}

.cat-card p,
.category-card p {
    margin: 0;
    padding: 0 16px 17px;
    color: var(--muted);
    font-size: 13px;
}

/* =============== PRODUCT LISTINGS =============== */

.product-grid,
.products-grid,
.products-container {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 22px;
}

.product-card {
    display: flex;
    min-width: 0;
    flex-direction: column;
    overflow: hidden;
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
    transition: transform var(--transition),
                box-shadow var(--transition),
                border-color var(--transition);
}

.product-card:hover {
    transform: translateY(-5px);
    border-color: #dcd5ff;
    box-shadow: var(--shadow);
}

.product-card .img-wrap {
    position: relative;
    display: flex;
    min-height: 190px;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    background: #f2f3f9;
}

.product-card .img-wrap img {
    width: 100%;
    height: 230px;
    object-fit: contain;
    mix-blend-mode: multiply;
    transition: transform 0.4s ease;
}

.product-card:hover .img-wrap img {
    transform: scale(1.055);
}

.product-card .badge,
.product-badge {
    position: absolute;
    top: 12px;
    left: 12px;
    z-index: 1;
    padding: 5px 10px;
    border-radius: 7px;
    background: var(--success-bg);
    color: var(--success);
    font-size: 11px;
    font-weight: 800;
}

.product-card .product-info,
.product-card .content {
    display: flex;
    flex: 1;
    flex-direction: column;
    padding: 16px;
}

.product-card h3,
.product-card .product-title {
    display: -webkit-box;
    overflow: hidden;
    margin: 0 0 7px;
    color: var(--primary);
    font-size: 15px;
    font-weight: 700;
    line-height: 1.5;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
}

.product-card .description {
    margin: 0 0 10px;
    color: var(--muted);
    font-size: 13px;
}

.rating,
.product-rating {
    margin-bottom: 10px;
    color: #a56d0a;
    font-size: 13px;
    font-weight: 650;
}

.product-card .price,
.product-price {
    display: flex;
    flex-wrap: wrap;
    align-items: baseline;
    gap: 8px;
    margin: 5px 0 14px;
    color: var(--primary);
    font-size: 21px;
    font-weight: 800;
}

.old-price,
.original-price {
    color: var(--muted-light, #9a9eb0);
    font-size: 13px;
    font-weight: 500;
    text-decoration: line-through;
}

.discount {
    color: var(--success);
    font-size: 12px;
    font-weight: 750;
}

.product-card .footer {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-top: auto;
    padding: 0 16px 16px;
}

.product-card .footer .add-btn,
.add-btn {
    display: inline-flex;
    flex: 1;
    min-height: 42px;
    align-items: center;
    justify-content: center;
    gap: 7px;
    padding: 9px 12px;
    border: 1px solid transparent;
    border-radius: 11px;
    background: var(--accent-soft);
    color: var(--accent-hover);
    font-size: 13px;
    font-weight: 750;
    transition: background var(--transition),
                color var(--transition);
}

.product-card .footer .add-btn:hover,
.product-card .footer .add-btn.added,
.add-btn:hover,
.add-btn.added {
    background: var(--success);
    color: #fff;
}

.wishlist-btn {
    display: inline-flex;
    width: 40px;
    height: 40px;
    flex-shrink: 0;
    align-items: center;
    justify-content: center;
    border: 1px solid var(--border);
    border-radius: 11px;
    background: white;
    color: var(--muted);
}

.wishlist-btn:hover,
.wishlist-btn.active {
    border-color: #ffcbd2;
    background: var(--danger-bg);
    color: var(--danger);
}

/* =============== FILTERS & SORTING =============== */

.shop-layout {
    display: grid;
    grid-template-columns: 240px minmax(0, 1fr);
    align-items: start;
    gap: 28px;
}

.filter-sidebar,
.filters,
.filter-panel {
    padding: 22px;
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
}

.filter-sidebar h3,
.filter-panel h3 {
    margin: 0 0 16px;
    font-size: 17px;
}

.filter-group {
    padding: 15px 0;
    border-bottom: 1px solid var(--border);
}

.filter-group:last-child {
    border-bottom: 0;
}

.filter-group label {
    display: flex;
    align-items: center;
    gap: 9px;
    margin: 9px 0;
    color: #555d72;
    font-size: 14px;
}

input[type="checkbox"],
input[type="radio"] {
    width: 17px;
    height: 17px;
    flex-shrink: 0;
    accent-color: var(--accent);
}

.shop-toolbar {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 14px;
    margin-bottom: 22px;
}

.shop-toolbar select {
    width: auto;
    min-width: 160px;
}

.results-count {
    color: var(--muted);
    font-size: 14px;
}

/* =============== FORMS / LOGIN / REGISTER =============== */

form {
    min-width: 0;
}

.form-group,
.form-field {
    margin-bottom: 18px;
}

.form-group label,
.form-field label,
form > label {
    display: block;
    margin-bottom: 7px;
    color: var(--primary);
    font-size: 14px;
    font-weight: 650;
}

input:not([type="checkbox"]):not([type="radio"]),
select,
textarea {
    max-width: 100%;
    border: 1px solid #dfe2ed;
    border-radius: 11px;
    background: white;
    color: var(--text);
    transition: border-color var(--transition),
                box-shadow var(--transition);
}

.form-group input,
.form-field input,
.form-group select,
.form-field select,
.form-group textarea,
.form-field textarea {
    width: 100%;
    min-height: 46px;
    padding: 11px 13px;
}

textarea {
    min-height: 120px;
    resize: vertical;
}

input::placeholder,
textarea::placeholder {
    color: #9a9eb0;
}

input:focus,
select:focus,
textarea:focus {
    border-color: var(--accent);
    outline: none;
    box-shadow: 0 0 0 4px rgba(105, 87, 232, 0.09);
}

.form-card,
.auth-card,
.login-card,
.checkout-card {
    width: 100%;
    max-width: 540px;
    margin: 36px auto;
    padding: clamp(22px, 4vw, 36px);
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius-lg);
    box-shadow: var(--shadow);
}

.form-card h1,
.auth-card h1,
.login-card h1,
.checkout-card h1 {
    margin-top: 0;
    margin-bottom: 8px;
    color: var(--primary);
    font-size: 27px;
    letter-spacing: -0.7px;
}

.form-card p,
.auth-card p {
    color: var(--muted);
}

.form-help {
    margin-top: 6px;
    color: var(--muted);
    font-size: 12px;
}

.error,
.error-message {
    color: var(--danger);
    font-size: 13px;
}

.success,
.success-message {
    color: var(--success);
    font-size: 13px;
}

/* =============== CART & CHECKOUT =============== */

.cart-layout,
.checkout-layout {
    display: grid;
    grid-template-columns: minmax(0, 1fr) 340px;
    align-items: start;
    gap: 24px;
}

.cart-items,
.cart-summary,
.order-summary,
.checkout-summary {
    padding: 24px;
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
}

.cart-summary,
.order-summary,
.checkout-summary {
    position: sticky;
    top: 145px;
}

.cart-item {
    display: grid;
    grid-template-columns: 100px minmax(0, 1fr) auto;
    align-items: center;
    gap: 18px;
    padding: 18px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item:first-child {
    padding-top: 0;
}

.cart-item:last-child {
    border-bottom: 0;
}

.cart-item img {
    width: 100px;
    height: 100px;
    object-fit: contain;
    border-radius: 12px;
    background: var(--surface);
}

.cart-item h3 {
    margin: 0 0 6px;
    font-size: 15px;
}

.quantity-control {
    display: inline-flex;
    align-items: center;
    overflow: hidden;
    border: 1px solid var(--border);
    border-radius: 9px;
}

.quantity-control button {
    width: 34px;
    height: 36px;
    border: 0;
    background: var(--surface);
    color: var(--primary);
}

.quantity-control span,
.quantity-control input {
    width: 40px;
    text-align: center;
}

.summary-row {
    display: flex;
    justify-content: space-between;
    gap: 14px;
    padding: 10px 0;
    color: #656b7d;
    font-size: 14px;
}

.summary-row.total {
    margin-top: 8px;
    padding-top: 18px;
    border-top: 1px solid var(--border);
    color: var(--primary);
    font-size: 19px;
    font-weight: 800;
}

.empty-state,
.empty-cart {
    padding: 50px 20px;
    text-align: center;
    color: var(--muted);
}

.empty-state h2,
.empty-cart h2 {
    color: var(--primary);
}

.empty-state img,
.empty-cart img {
    width: 150px;
    margin: 0 auto 20px;
}

/* =============== DEALS & NEWSLETTER =============== */

.deal-wrap {
    overflow: hidden;
    padding: clamp(22px, 4vw, 38px);
    border-radius: var(--radius-lg);
    background: linear-gradient(125deg, #28264f, #5544b4, #7967ed);
    box-shadow: var(--shadow);
    color: white;
}

.deal-wrap h2,
.deal-wrap h3 {
    color: white;
}

.deal-wrap p {
    color: rgba(255, 255, 255, 0.82);
}

.newsletter-wrap {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 24px;
    padding: clamp(24px, 4vw, 40px);
    border-radius: var(--radius-lg);
    background: linear-gradient(125deg, #28264f, #5544b4, #7967ed);
    box-shadow: var(--shadow);
    color: white;
}

.newsletter-wrap h2 {
    margin: 0 0 8px;
    color: white;
    font-size: 25px;
}

.newsletter-wrap p {
    margin: 0;
    color: rgba(255, 255, 255, 0.8);
}

.newsletter-wrap form {
    display: flex;
    flex: 1;
    max-width: 470px;
    gap: 9px;
}

.newsletter-wrap input {
    flex: 1;
    width: 100%;
    min-width: 0;
    padding: 12px;
    border: 0;
    border-radius: 10px;
}

.newsletter-wrap button {
    flex-shrink: 0;
    background: white;
    color: var(--accent-hover);
}

/* =============== TABLES / ORDERS / ADMIN =============== */

.table-wrap {
    width: 100%;
    overflow-x: auto;
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
}

table {
    width: 100%;
    border-collapse: collapse;
    text-align: left;
}

th,
td {
    padding: 15px 18px;
    border-bottom: 1px solid var(--border);
    vertical-align: middle;
}

th {
    background: #f7f7fc;
    color: #60677c;
    font-size: 12px;
    font-weight: 800;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    white-space: nowrap;
}

td {
    color: var(--text);
    font-size: 14px;
}

tbody tr:last-child td {
    border-bottom: 0;
}

tbody tr:hover {
    background: #fafaff;
}

.status,
.status-badge {
    display: inline-flex;
    align-items: center;
    padding: 5px 10px;
    border-radius: 20px;
    background: var(--success-bg);
    color: var(--success);
    font-size: 12px;
    font-weight: 750;
}

.status.pending {
    background: var(--warning-bg);
    color: var(--warning);
}

.status.cancelled,
.status.error {
    background: var(--danger-bg);
    color: var(--danger);
}

/* =============== REVIEWS / TESTIMONIALS =============== */

.testimonial-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 20px;
}

.testimonial-card {
    padding: 24px;
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
    transition: transform var(--transition),
                box-shadow var(--transition);
}

.testimonial-card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow);
}

.testimonial-card p {
    color: #626980;
}

.testimonial-card h4 {
    margin-bottom: 0;
    color: var(--primary);
}

/* =============== PAGINATION =============== */

.pagination {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    gap: 8px;
    margin: 30px 0;
}

.pagination a,
.pagination button,
.pagination span {
    display: inline-flex;
    min-width: 40px;
    height: 40px;
    align-items: center;
    justify-content: center;
    padding: 0 12px;
    border: 1px solid var(--border);
    border-radius: 10px;
    background: white;
    color: var(--primary);
}

.pagination .active,
.pagination a:hover,
.pagination button:hover {
    border-color: var(--accent);
    background: var(--accent);
    color: white;
}

/* =============== FOOTER =============== */

footer {
    margin-top: 60px;
    padding: 44px 0 20px;
    background: #222443;
    color: #d9d9ed;
}

.footer-inner,
.footer-content {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 35px;
    width: min(calc(100% - 40px), var(--content-width));
    margin: auto;
}

footer h3,
footer h4 {
    margin-top: 0;
    color: white;
}

footer p {
    color: #b6b8d1;
    font-size: 14px;
}

footer a {
    display: block;
    margin: 10px 0;
    color: #c4c5dc;
    font-size: 14px;
}

footer a:hover {
    color: white;
}

.footer-bottom {
    width: min(calc(100% - 40px), var(--content-width));
    margin: 30px auto 0;
    padding-top: 18px;
    border-top: 1px solid rgba(255, 255, 255, 0.12);
    color: #b6b8d1;
    font-size: 13px;
    text-align: center;
}

/* =============== ALERTS & TOASTS =============== */

.alert {
    margin: 18px 0;
    padding: 14px 16px;
    border: 1px solid var(--border);
    border-radius: 11px;
    background: white;
}

.alert-success {
    border-color: #c8ecdf;
    background: var(--success-bg);
    color: var(--success);
}

.alert-error {
    border-color: #ffd7dc;
    background: var(--danger-bg);
    color: var(--danger);
}

.alert-warning {
    border-color: #f5e4b3;
    background: var(--warning-bg);
    color: var(--warning);
}

/* =============== MOBILE & TABLET =============== */

@media (max-width: 1050px) {
    .product-grid,
    .products-grid,
    .products-container {
        grid-template-columns: repeat(3, minmax(0, 1fr));
        gap: 16px;
    }

    .category-grid,
    .categories-grid {
        grid-template-columns: repeat(3, minmax(0, 1fr));
    }

    .shop-layout {
        grid-template-columns: 200px minmax(0, 1fr);
        gap: 18px;
    }

    .header-inner,
    .header-content {
        gap: 14px;
    }

    .footer-inner,
    .footer-content {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }
}

@media (max-width: 768px) {
    body {
        font-size: 14px;
    }

    main,
    .main-content,
    .container,
    .page-container {
        width: calc(100% - 28px);
    }

    section {
        margin-bottom: 28px;
    }

    .header-inner,
    .header-content {
        width: calc(100% - 28px);
        min-height: 65px;
        flex-wrap: wrap;
        gap: 10px;
        padding: 10px 0;
    }

    .brand {
        font-size: 21px;
    }

    .brand img {
        max-width: 115px;
        max-height: 40px;
    }

    header .search-box,
    .header-search {
        order: 3;
        flex: 1 0 100%;
        max-width: none;
    }

    .header-actions {
        gap: 3px;
    }

    .header-actions a,
    .header-actions button {
        min-height: 38px;
        padding: 7px 9px;
        font-size: 12px;
    }

    nav.main-nav {
        overflow-x: auto;
        scrollbar-width: thin;
    }

    nav.main-nav ul {
        width: max-content;
        min-width: 100%;
        gap: 3px;
        padding: 7px 14px;
    }

    nav.main-nav li a {
        padding: 8px 12px;
        font-size: 13px;
    }

    .hero {
        min-height: 330px;
        margin: 20px 0 30px;
        padding: 28px 22px;
        border-radius: 17px;
    }

    .hero h1 {
        font-size: clamp(30px, 7vw, 42px);
    }

    .hero p {
        font-size: 15px;
    }

    .hero::after {
        background: linear-gradient(
            90deg,
            rgba(28, 25, 67, 0.94),
            rgba(43, 35, 100, 0.64)
        );
    }

    .product-grid,
    .products-grid,
    .products-container {
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 12px;
    }

    .category-grid,
    .categories-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 12px;
    }

    .product-card {
        border-radius: 13px;
    }

    .product-card .img-wrap {
        min-height: 145px;
    }

    .product-card .img-wrap img {
        height: 165px;
    }

    .product-card .product-info,
    .product-card .content {
        padding: 11px;
    }

    .product-card h3,
    .product-card .product-title {
        font-size: 13px;
    }

    .product-card .price,
    .product-price {
        gap: 5px;
        font-size: 17px;
    }

    .product-card .footer {
        gap: 6px;
        padding: 0 10px 11px;
    }

    .product-card .footer .add-btn,
    .add-btn {
        min-height: 39px;
        padding: 8px 6px;
        font-size: 12px;
    }

    .wishlist-btn {
        width: 36px;
        height: 36px;
    }

    .cat-card img,
    .category-card img {
        height: 135px;
    }

    .shop-layout {
        grid-template-columns: 1fr;
    }

    .filter-sidebar,
    .filters,
    .filter-panel {
        padding: 15px;
    }

    .cart-layout,
    .checkout-layout {
        grid-template-columns: 1fr;
    }

    .cart-summary,
    .order-summary,
    .checkout-summary {
        position: static;
    }

    .cart-item {
        grid-template-columns: 70px minmax(0, 1fr);
        gap: 12px;
    }

    .cart-item img {
        width: 70px;
        height: 80px;
    }

    .cart-item > :last-child {
        grid-column: 2;
    }

    .testimonial-grid {
        grid-template-columns: 1fr;
    }

    .newsletter-wrap {
        align-items: stretch;
        flex-direction: column;
        gap: 18px;
    }

    .newsletter-wrap form {
        max-width: none;
    }

    .footer-inner,
    .footer-content {
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 24px;
    }

    .form-card,
    .auth-card,
    .login-card,
    .checkout-card {
        margin: 24px auto;
        border-radius: 17px;
    }

    .table-wrap {
        border-radius: 12px;
    }

    th,
    td {
        padding: 12px;
    }
}

@media (max-width: 420px) {
    main,
    .main-content,
    .container,
    .page-container {
        width: calc(100% - 22px);
    }

    .product-grid,
    .products-grid,
    .products-container {
        gap: 9px;
    }

    .product-card .img-wrap img {
        height: 140px;
    }

    .product-card .img-wrap {
        min-height: 130px;
    }

    .product-card .price,
    .product-price {
        font-size: 15px;
    }

    .product-card .badge,
    .product-badge {
        top: 7px;
        left: 7px;
        padding: 4px 6px;
        font-size: 10px;
    }

    .hero {
        min-height: 300px;
        padding: 23px 17px;
    }

    .hero h1 {
        font-size: 29px;
    }

    .newsletter-wrap form {
        flex-direction: column;
    }

    .newsletter-wrap button {
        width: 100%;
    }

    .footer-inner,
    .footer-content {
        gap: 18px;
    }
}

/* =============== REDUCED MOTION =============== */

@media (prefers-reduced-motion: reduce) {
    *,
    *::before,
    *::after {
        scroll-behavior: auto !important;
        animation-duration: 0.01ms !important;
        transition-duration: 0.01ms !important;
    }
}
