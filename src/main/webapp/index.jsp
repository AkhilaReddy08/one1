
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IRONCORE Fitness | Gym</title>

<style>
:root {
  --lime: #c8ff3d;
  --dark: #101210;
  --panel: #191d19;
  --muted: #a6ada4;
  --white: #f7f8f4;
  --border: #30362f;
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
  color: var(--white);
  line-height: 1.6;
}

a {
  text-decoration: none;
  color: inherit;
}

button, input, select {
  font: inherit;
}

button { cursor: pointer; }

.topbar {
  background: var(--lime);
  color: #111;
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
  background: #101210f5;
  padding: 18px 6%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 20px;
  border-bottom: 1px solid var(--border);
}

.logo {
  font-size: 25px;
  font-weight: 900;
}

.logo span { color: var(--lime); }

.logo small {
  display: block;
  font-size: 9px;
  letter-spacing: 4px;
  color: var(--muted);
}

nav {
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
}

nav a {
  font-size: 13px;
  font-weight: bold;
}

nav a:hover { color: var(--lime); }

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
  background: var(--lime);
  color: #111;
}

.primary:hover {
  background: white;
  transform: translateY(-2px);
}

.outline {
  border: 1px solid white;
  background: transparent;
  color: white;
}

.hero {
  min-height: 560px;
  display: flex;
  align-items: center;
  padding: 70px 8%;
  background:
    linear-gradient(90deg, #080a08f5, #101210a8, #10121020),
    url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content { max-width: 650px; }

.eyebrow {
  color: var(--lime);
  font-size: 12px;
  font-weight: bold;
  letter-spacing: 3px;
  text-transform: uppercase;
}

.hero h1 {
  font-size: clamp(45px, 7vw, 80px);
  line-height: 1;
  margin: 20px 0;
  text-transform: uppercase;
}

.hero h1 span { color: var(--lime); }

.hero p {
  color: #d4d9d1;
  max-width: 500px;
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
  border-bottom: 3px solid var(--lime);
}

.quick strong {
  display: block;
  font-size: 28px;
  color: var(--lime);
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
.join h2 {
  font-size: clamp(30px, 4vw, 44px);
  line-height: 1.15;
  margin: 10px 0;
  text-transform: uppercase;
}

.heading p {
  font-size: 14px;
  color: var(--muted);
}

.programs {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 18px;
}

.program {
  min-height: 290px;
  padding: 25px;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  background:
    linear-gradient(0deg, #080a08f5, #080a0840),
    var(--image) center/cover;
  border: 1px solid var(--border);
  transition: .3s;
}

.program:hover { transform: translateY(-5px); }

.program .number {
  color: var(--lime);
  font-size: 12px;
  font-weight: bold;
}

.program h3 {
  font-size: 25px;
  text-transform: uppercase;
  margin: 8px 0;
}

.program p {
  color: #ddd;
  font-size: 13px;
}

.trainer-section { background: #171a17; }

.tools {
  display: flex;
  gap: 12px;
  margin-bottom: 25px;
}

.tools input,
.tools select {
  background: var(--dark);
  color: white;
  padding: 12px;
  border: 1px solid var(--border);
  border-radius: 4px;
}

.tools input {
  flex: 1;
  min-width: 180px;
}

.trainer-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}

.trainer {
  background: var(--dark);
  border: 1px solid var(--border);
}

.trainer img {
  width: 100%;
  height: 280px;
  object-fit: cover;
  display: block;
}

.trainer-info { padding: 20px; }

.tag {
  display: inline-block;
  background: var(--lime);
  color: #111;
  padding: 4px 8px;
  font-size: 10px;
  font-weight: bold;
}

.trainer h3 {
  margin-top: 10px;
  font-size: 21px;
}

.trainer p {
  color: var(--muted);
  font-size: 13px;
  margin: 8px 0 15px;
}

.trainer-bottom {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 8px;
  border-top: 1px solid var(--border);
  padding-top: 14px;
}

.price {
  color: var(--lime);
  font-weight: bold;
}

.trainer-bottom .btn { padding: 10px; }

.about {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 45px;
  align-items: center;
}

.about img {
  width: 100%;
  height: 390px;
  object-fit: cover;
}

.about p {
  color: var(--muted);
  margin: 15px 0;
}

.benefit {
  margin: 10px 0;
  font-size: 13px;
  font-weight: bold;
}

.benefit span {
  color: var(--lime);
  margin-right: 8px;
}

.stats {
  background: var(--lime);
  color: #111;
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

.join {
  margin: 60px 6%;
  padding: 40px;
  background: var(--panel);
  border: 1px solid var(--border);
  border-top: 4px solid var(--lime);
}

.join > p {
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
.field select {
  width: 100%;
  padding: 13px;
  color: white;
  background: var(--dark);
  border: 1px solid var(--border);
  border-radius: 4px;
}

.full { grid-column: 1 / -1; }

footer {
  background: #080a08;
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

footer a:hover { color: var(--lime); }

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
  background: var(--lime);
  color: #111;
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
  border-top: 4px solid var(--lime);
  width: 100%;
  max-width: 480px;
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
  .programs, .trainer-grid { grid-template-columns: repeat(2, 1fr); }
}

@media(max-width:620px) {
  .topbar { justify-content: center; text-align: center; }
  nav { justify-content: center; gap: 12px; }
  .hero { padding: 55px 6%; }
  .quick { grid-template-columns: repeat(2, 1fr); margin: 18px 5% 0; }
  .section { padding: 50px 5%; }
  .programs, .trainer-grid, .about { grid-template-columns: 1fr; }
  .stats { grid-template-columns: repeat(2, 1fr); }
  .join { margin: 30px 5%; padding: 23px; }
  .form-grid, .footer-grid { grid-template-columns: 1fr; }
  .full { grid-column: auto; }
  .tools { flex-direction: column; }
  .tools input, .tools select { width: 100%; }
}
</style>
</head>

<body>

<div class="topbar">
  <span>⚡ YOUR GOALS. YOUR GRIND. YOUR RESULTS.</span>
  <span>MON–SAT · 5:00 AM – 11:00 PM</span>
</div>

<header>
  <a href="#home" class="logo">
    IRON<span>CORE</span>
    <small>FITNESS CLUB</small>
  </a>

  <nav>
    <a href="#home">Home</a>
    <a href="#programs">Programs</a>
    <a href="#trainers">Trainers</a>
    <a href="#about">About</a>
    <a href="#membership">Membership</a>
  </nav>

  <button class="btn primary" onclick="scrollToJoin()">Join The Gym ↗</button>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">No shortcuts. Just strength.</div>
    <h1>Build your<br><span>strongest</span> self.</h1>
    <p>Train with purpose in a high-energy fitness space built for every level. Get stronger, move better and make progress that lasts.</p>
    <div class="actions">
      <button class="btn primary" onclick="scrollToJoin()">Start Your Journey →</button>
      <a class="btn outline" href="#programs">Explore Programs</a>
    </div>
  </div>
</section>

<div class="quick">
  <article><strong>12K+</strong><span>Workouts completed</span></article>
  <article><strong>15+</strong><span>Expert coaches</span></article>
  <article><strong>40+</strong><span>Weekly classes</span></article>
  <article><strong>24/7</strong><span>Member motivation</span></article>
</div>

<section class="section" id="programs">
  <div class="heading">
    <div class="eyebrow">Find your training style</div>
    <h2>Made for your goals</h2>
    <p>Choose a program, show up consistently and build momentum.</p>
  </div>

  <div class="programs">
    <article class="program" style="--image:url('https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=900&q=80')">
      <span class="number">01 / STRENGTH</span>
      <h3>Weight Training</h3>
      <p>Build strength with progressive training and expert guidance.</p>
    </article>

    <article class="program" style="--image:url('https://images.unsplash.com/photo-1518611012118-696072aa579a?auto=format&fit=crop&w=900&q=80')">
      <span class="number">02 / CONDITIONING</span>
      <h3>HIIT & Cardio</h3>
      <p>Improve stamina with energetic, full-body sessions.</p>
    </article>

    <article class="program" style="--image:url('https://images.unsplash.com/photo-1599447421416-3414500d18a5?auto=format&fit=crop&w=900&q=80')">
      <span class="number">03 / MOBILITY</span>
      <h3>Yoga & Mobility</h3>
      <p>Build flexibility and recover with intention.</p>
    </article>
  </div>
</section>

<section class="section trainer-section" id="trainers">
  <div class="heading">
    <div class="eyebrow">Your team. Your progress.</div>
    <h2>Meet the coaches</h2>
    <p>Search our sample trainers and find a style that fits you.</p>
  </div>

<div class="tools">
  <label for="trainer-search">Search trainer</label>
  <input
    id="trainer-search"
    type="search"
    placeholder="Search trainer or specialty..."
    oninput="renderTrainers()"
  >

  <label for="trainer-filter">Filter by program</label>
  <select id="trainer-filter" onchange="renderTrainers()">
    <option value="All">All programs</option>
    <option>Strength</option>
    <option>HIIT &amp; Cardio</option>
    <option>Yoga &amp; Mobility</option>
  </select>
</div>

  <div class="trainer-grid" id="trainer-grid"></div>
</section>

<section class="section" id="about">
  <div class="about">
    <img src="https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1100&q=85"
      alt="Modern gym with strength training equipment">

    <div>
      <div class="eyebrow">More than a workout</div>
      <h2>Show up. Put in work. Level up.</h2>
      <p>IRONCORE is a gym concept designed around consistency, community and smart training. Whether you're a beginner or experienced athlete, your next step starts here.</p>

      <div class="benefit"><span>✓</span> Training zones for different fitness goals</div>
      <div class="benefit"><span>✓</span> Friendly coaching and practical guidance</div>
      <div class="benefit"><span>✓</span> Flexible membership options</div>
      <div class="benefit"><span>✓</span> Mobile-friendly website design</div>
      <br>
      <button class="btn primary" onclick="scrollToJoin()">Find Your Membership →</button>
    </div>
  </div>
</section>

<section class="stats">
  <div><strong>1,200+</strong><span>Active members</span></div>
  <div><strong>15+</strong><span>Fitness coaches</span></div>
  <div><strong>40+</strong><span>Weekly sessions</span></div>
  <div><strong>5.0</strong><span>Commitment mindset</span></div>
</section>

<section class="join" id="membership">
  <div class="eyebrow">Your next chapter starts here</div>
  <h2>Get your membership</h2>
  <p>Enter your details to preview a membership request. This demo does not send your information.</p>

  <form id="join-form">
    <div class="form-grid">
      <div class="field">
        <label for="member-name">Full name *</label>
        <input id="member-name" required maxlength="100" placeholder="Enter your name">
      </div>

      <div class="field">
        <label for="member-phone">Phone number *</label>
        <input id="member-phone" type="tel" required
          pattern="[0-9+() -]{8,18}" placeholder="+91 98765 43210">
      </div>

      <div class="field">
        <label for="member-email">Email address</label>
        <input id="member-email" type="email" placeholder="you@example.com">
      </div>

      <div class="field">
        <label for="member-program">Preferred program *</label>
        <select id="member-program" required>
          <option value="">Choose a program</option>
          <option>Strength</option>
          <option>HIIT & Cardio</option>
          <option>Yoga & Mobility</option>
          <option>General Fitness</option>
          <option>Personal Training</option>
        </select>
      </div>

      <div class="field">
        <label for="member-plan">Membership plan *</label>
        <select id="member-plan" required>
          <option value="">Choose a plan</option>
          <option>Day Pass — ₹299</option>
          <option>Monthly — ₹1,999</option>
          <option>Quarterly — ₹5,499</option>
          <option>Annual — ₹17,999</option>
        </select>
      </div>

      <div class="field">
        <label for="member-start">Preferred start date *</label>
        <input id="member-start" type="date" required>
      </div>

      <div class="full">
        <button class="btn primary" type="submit">Preview Membership Request →</button>
      </div>
    </div>
  </form>
</section>

<footer>
  <div class="footer-grid">
    <div>
      <h2 class="logo">IRON<span>CORE</span></h2>
      <p>Train with purpose. Build strength. Keep showing up.</p>
      <p>📍 Hyderabad, Telangana, India</p>
      <p>☎ Demo contact: +91 98765 43210</p>
    </div>

    <div>
      <h3>Explore</h3>
      <a href="#programs">Training Programs</a>
      <a href="#trainers">Our Coaches</a>
      <a href="#about">About IRONCORE</a>
    </div>

    <div>
      <h3>Get Started</h3>
      <a href="#membership">Membership Plans</a>
      <a href="#membership">Request a Visit</a>
      <a href="#home">Back to Top ↑</a>
    </div>
  </div>

  <div class="copyright">
    © 2026 IRONCORE Fitness — Demo UI for learning and portfolio use.
    Trainer profiles, pricing and stats are illustrative.
    No membership is created.
  </div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<div class="modal" id="confirmation-modal" role="dialog"
  aria-modal="true" aria-labelledby="confirmation-title">
  <div class="modal-box">
    <h2 id="confirmation-title">Membership Request Preview</h2>
    <p id="confirmation-details"></p>
    <p><strong>This is a front-end demonstration only.</strong>
      No membership was created and no information was sent.</p>
    <div class="modal-actions">
      <button class="btn primary" onclick="closeConfirmation()">Done</button>
      <button class="btn outline" onclick="closeConfirmation()">Close</button>
    </div>
  </div>
</div>

<script>
const trainers = [
  {
    id: 1,
    name: "Marcus Reed",
    specialty: "Strength",
    experience: "12 years coaching",
    fee: 799,
    image: "photo-1567013127542-490d757e51fc",
    description: "Strength training, lifting technique and progressive programs."
  },
  {
    id: 2,
    name: "Aisha Patel",
    specialty: "HIIT & Cardio",
    experience: "8 years coaching",
    fee: 699,
    image: "photo-1549476464-37392f717541",
    description: "Conditioning sessions focused on stamina and movement."
  },
  {
    id: 3,
    name: "Daniel Brooks",
    specialty: "Yoga & Mobility",
    experience: "9 years coaching",
    fee: 599,
    image: "photo-1599447421416-3414500d18a5",
    description: "Mobility, flexibility and recovery-focused sessions."
  }
];

function money(amount) {
  return new Intl.NumberFormat("en-IN", {
    style: "currency",
    currency: "INR",
    maximumFractionDigits: 0
  }).format(amount);
}

function renderTrainers() {
  const query = document.getElementById("trainer-search")
    .value.toLowerCase().trim();

  const specialty = document.getElementById("trainer-filter").value;

  const filtered = trainers.filter(trainer =>
    (trainer.name + " " + trainer.specialty)
      .toLowerCase().includes(query) &&
    (specialty === "All" || trainer.specialty === specialty)
  );

  const grid = document.getElementById("trainer-grid");

  if (!filtered.length) {
    grid.innerHTML = "<p>No matching trainers. Try another search.</p>";
    return;
  }

  grid.innerHTML = filtered.map(trainer => `
    <article class="trainer">
      <img
        src="https://images.unsplash.com/${trainer.image}?auto=format&fit=crop&w=700&q=80"
        alt="Illustrative fitness trainer"
        loading="lazy"
        onerror="this.onerror=null;this.src='https://placehold.co/700x450/191d19/c8ff3d?text=Fitness+Coach'">

      <div class="trainer-info">
        <span class="tag">Sample coach</span>
        <h3>${trainer.name}</h3>
        <p>
          <strong>${trainer.specialty}</strong><br>
          ${trainer.experience}<br>
          ${trainer.description}
        </p>

        <div class="trainer-bottom">
          <span class="price">${money(trainer.fee)} <small>/ session</small></span>
          <button class="btn primary" onclick="selectTrainer(${trainer.id})">
            Choose Coach
          </button>
        </div>
      </div>
    </article>
  `).join("");
}

function scrollToJoin() {
  document.getElementById("membership").scrollIntoView({
    behavior: "smooth"
  });
}

function selectTrainer(id) {
  const trainer = trainers.find(item => item.id === id);
  document.getElementById("member-program").value = trainer.specialty;
  scrollToJoin();
  showToast("Selected sample coach: " + trainer.name);
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

const startInput = document.getElementById("member-start");
startInput.min = localDateString(new Date());

document.getElementById("join-form").addEventListener("submit", function(event) {
  event.preventDefault();

  if (startInput.value < localDateString(new Date())) {
    showToast("Please choose today or a future date.");
    return;
  }

  const details = [
    "Name: " + document.getElementById("member-name").value.trim(),
    "Phone: " + document.getElementById("member-phone").value.trim(),
    "Program: " + document.getElementById("member-program").value,
    "Plan: " + document.getElementById("member-plan").value,
    "Preferred start: " + startInput.value
  ].join("\n");

  const detailsElement = document.getElementById("confirmation-details");
  detailsElement.style.whiteSpace = "pre-line";
  detailsElement.textContent = details;

  document.getElementById("confirmation-modal").classList.add("open");
});

document.getElementById("confirmation-modal")
  .addEventListener("click", function(event) {
    if (event.target === this) closeConfirmation();
  });

document.addEventListener("keydown", function(event) {
  if (event.key === "Escape") closeConfirmation();
});

renderTrainers();
</script>

</body>
</html>
