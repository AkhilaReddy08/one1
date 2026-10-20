
/* ===== NEXUSSHOP MODERN THEME ===== */
:root {
    --bg: #f8f7ff;
    --bg-card: #ffffff;
    --primary: #24234a;
    --primary-light: #39366b;
    --accent: #7865f5;
    --accent-light: #e9e5ff;
    --accent-dark: #5d49dc;
    --muted: #6d6b89;
    --muted-light: #a5a3bd;
    --surface: #f0efff;
    --success: #169b83;
    --warning: #ffd166;
    --radius: 20px;
    --shadow: 0 8px 28px rgba(45, 38, 105, 0.07);
    --shadow-hover: 0 16px 36px rgba(92, 73, 220, 0.16);
}

/* Page background */
body {
    background:
        radial-gradient(circle at 10% 10%, #eae5ff 0, transparent 28%),
        #f8f7ff;
    color: var(--primary);
}

/* Navigation */
header {
    background: rgba(255, 255, 255, 0.94);
    box-shadow: 0 5px 25px rgba(45, 38, 105, 0.06);
}

.brand i,
.brand .accent {
    color: var(--accent);
}

nav.main-nav li a:hover,
nav.main-nav li a.active {
    background: #eeeaff;
    color: var(--accent-dark);
}

/* Buttons */
.btn-primary {
    background: linear-gradient(135deg, #7865f5, #5d8df6);
    border-color: transparent;
    box-shadow: 0 6px 18px rgba(120, 101, 245, 0.2);
}

.btn-primary:hover {
    background: linear-gradient(135deg, #5d49dc, #3975e8);
    border-color: transparent;
    box-shadow: 0 10px 25px rgba(120, 101, 245, 0.3);
}

.btn-secondary {
    background: #28264f;
    border-color: #28264f;
}

/* Hero section with a beautiful store image */
.hero {
    position: relative;
    overflow: hidden;
    border-radius: 24px;
    box-shadow: 0 18px 45px rgba(71, 57, 157, 0.18);
}

.hero::before {
    background-image:
        linear-gradient(
            90deg,
            rgba(35, 31, 83, 0.88),
            rgba(59, 48, 133, 0.40),
            rgba(35, 31, 83, 0.10)
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85");
    background-position: center;
    background-size: cover;
    opacity: 1;
}

/* Product and category cards */
.cat-card,
.product-card,
.testimonial-card {
    background: #ffffff;
    border: 1px solid #eae6ff;
    border-radius: 20px;
    box-shadow: var(--shadow);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.cat-card:hover,
.product-card:hover,
.testimonial-card:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow-hover);
}

/* Product images */
.product-card .img-wrap {
    overflow: hidden;
    background: #f0efff;
}

.product-card .img-wrap img {
    transition: transform 0.4s ease;
}

.product-card:hover .img-wrap img {
    transform: scale(1.06);
}

/* Add-to-cart buttons */
.product-card .footer .add-btn {
    background: #eeeaff;
    color: #5d49dc;
    border-radius: 12px;
    transition: 0.25s ease;
}

.product-card .footer .add-btn:hover,
.product-card .footer .add-btn.added {
    background: #169b83;
    color: white;
}

/* Flash deal */
.deal-wrap {
    border-radius: 24px;
    overflow: hidden;
    box-shadow: var(--shadow);
}

/* Newsletter section */
.newsletter-wrap {
    background: linear-gradient(
        125deg,
        #282456 0%,
        #5143a6 58%,
        #7865f5 100%
    );
    border-radius: 24px;
    box-shadow: 0 16px 40px rgba(45, 38, 105, 0.14);
}

/* Footer */
footer {
    background: #f0efff;
    border-top: 1px solid #e4e0ff;
}

/* Mobile layout */
@media (max-width: 768px) {
    .hero {
        border-radius: 16px;
    }

    .product-card,
    .cat-card {
        border-radius: 16px;
    }
}
