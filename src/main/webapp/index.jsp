
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CarePlus Hospital | Healthcare & Wellness</title>

<style>
:root {
  --blue: #3978d4;
  --navy: #233b69;
  --pink: #e875a7;
  --mint: #fff0f6;
  --white: #ffffff;
  --light: #f4f7ff;
  --text: #29364f;
  --muted: #758198;
  --border: #e5e7f5;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html { scroll-behavior: smooth; }

body {
  font-family: "Segoe UI", Arial, sans-serif;
  background: var(--white);
  color: var(--text);
  line-height: 1.6;
}

button, input, select, textarea { font: inherit; }
button { cursor: pointer; }
a { text-decoration: none; color: inherit; }

.topbar {
  background: var(--navy);
  color: white;
  padding: 9px 6%;
  display: flex;
  justify-content: space-between;
  gap: 12px;
  flex-wrap: wrap;
  font-size: 12px;
}

header {
  padding: 18px 6%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 20px;
  flex-wrap: wrap;
  background: white;
  position: sticky;
  top: 0;
  z-index: 10;
  box-shadow: 0 3px 15px #233b6910;
}

.logo {
  font-size: 26px;
  font-weight: 800;
  color: var(--navy);
  letter-spacing: -1px;
}

.logo span { color: var(--pink); }

.logo small {
  display: block;
  font-size: 10px;
  letter-spacing: 3px;
  font-weight: 600;
}

nav {
  display: flex;
  flex-wrap: wrap;
  gap: 22px;
}

nav a {
  font-size: 13px;
  font-weight: 600;
}

nav a:hover { color: var(--pink); }

.btn {
  border: none;
  padding: 12px 18px;
  border-radius: 7px;
  font-weight: 700;
  font-size: 13px;
  display: inline-block;
  transition: .2s;
}

.primary {
  background: var(--blue);
  color: white;
}

.primary:hover {
  background: var(--navy);
  transform: translateY(-1px);
}

.outline {
  background: white;
  color: var(--blue);
  border: 1px solid var(--blue);
}

.hero {
  margin: 20px 3%;
  min-height: 500px;
  padding: 55px 7%;
  border-radius: 18px;
  display: flex;
  align-items: center;
  color: white;
  background:
    linear-gradient(90deg, #172c55f2 0%, #233b69bd 48%, #3978d420 100%),
    url("https://images.unsplash.com/photo-1551190822-a9333d879b1f?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content { max-width: 610px; }

.eyebrow {
  color: var(--pink);
  font-size: 12px;
  font-weight: 800;
  letter-spacing: 2px;
  text-transform: uppercase;
}

.hero .eyebrow { color: #ffb8d5; }

.hero h1 {
  font-size: clamp(38px, 5.5vw, 64px);
  line-height: 1.1;
  margin: 18px 0;
  letter-spacing: -1.5px;
}

.hero p {
  max-width: 490px;
  margin-bottom: 26px;
  color: #e6efff;
}

.hero-actions {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
}

.hero .outline {
  background: transparent;
  color: white;
  border-color: #ffffff90;
}

.quick-services {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 16px;
  margin: -35px 7% 0;
  position: relative;
  z-index: 2;
}

.quick-card {
  background: white;
  border: 1px solid var(--border);
  padding: 22px 15px;
  text-align: center;
  border-radius: 12px;
  box-shadow: 0 10px 35px #233b690b;
}

.quick-card .emoji { font-size: 29px; }

.quick-card h3 {
  font-size: 14px;
  margin: 7px 0 3px;
}

.quick-card p {
  font-size: 11px;
  color: var(--muted);
}

.section { padding: 75px 6%; }

.heading {
  text-align: center;
  margin-bottom: 35px;
}

.heading h2 {
  font-size: clamp(27px, 4vw, 38px);
  color: var(--navy);
  margin: 7px 0;
}

.heading p {
  color: var(--muted);
  font-size: 14px;
}

.departments {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

.department {
  padding: 26px 20px;
  border: 1px solid var(--border);
  border-radius: 12px;
  transition: .2s;
  background: white;
}

.department:hover {
  transform: translateY(-4px);
  border-color: var(--pink);
  box-shadow: 0 12px 30px #233b690c;
}

.dept-icon {
  width: 55px;
  height: 55px;
  background: #ffe3ef;
  color: var(--blue);
  display: grid;
  place-items: center;
  border-radius: 13px;
  font-size: 27px;
  margin-bottom: 16px;
}

.department h3 {
  font-size: 17px;
  margin-bottom: 7px;
}

.department p {
  font-size: 12px;
  color: var(--muted);
  min-height: 58px;
}

.department button {
  margin-top: 15px;
  color: var(--blue);
  border: none;
  background: transparent;
  font-size: 12px;
  font-weight: 800;
}

.department button:hover { color: var(--pink); }

.doctor-section { background: var(--light); }

.doctor-tools {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  margin-bottom: 25px;
}

.doctor-tools input,
.doctor-tools select {
  padding: 12px;
  border: 1px solid var(--border);
  border-radius: 7px;
  background: white;
}

.doctor-tools input {
  flex: 1;
  min-width: 180px;
}

.doctor-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 22px;
}

.doctor-card {
  background: white;
  border-radius: 13px;
  overflow: hidden;
  border: 1px solid var(--border);
  transition: .2s;
}

.doctor-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 30px #233b6912;
}

.doctor-card img {
  width: 100%;
  height: 245px;
  object-fit: cover;
  object-position: center top;
  background: var(--mint);
}

.doctor-info { padding: 20px; }

.available {
  display: inline-block;
  padding: 4px 9px;
  border-radius: 20px;
  background: #ffe3ef;
  color: #a72d67;
  font-size: 10px;
  font-weight: 800;
  margin-bottom: 9px;
}

.doctor-info h3 {
  font-size: 20px;
  color: var(--navy);
}

.specialty {
  color: var(--blue);
  font-size: 13px;
  font-weight: 700;
  margin: 4px 0;
}

.doctor-info p {
  color: var(--muted);
  font-size: 12px;
  margin: 9px 0 15px;
}

.doctor-bottom {
  border-top: 1px solid var(--border);
  padding-top: 14px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 10px;
}

.fee {
  font-weight: 800;
  color: var(--navy);
}

.doctor-bottom .btn {
  padding: 9px 12px;
  font-size: 11px;
}

.about {
  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;
  gap: 50px;
}

.about-image { position: relative; }

.about-image img {
  width: 100%;
  height: 390px;
  object-fit: cover;
  border-radius: 14px;
}

.experience {
  position: absolute;
  right: -15px;
  bottom: 20px;
  background: var(--pink);
  color: white;
  padding: 20px;
  border-radius: 12px;
  font-weight: 800;
  text-align: center;
}

.experience strong {
  display: block;
  font-size: 29px;
}

.about h2 {
  color: var(--navy);
  font-size: clamp(29px, 4vw, 40px);
  line-height: 1.2;
  margin: 12px 0;
}

.about p {
  color: var(--muted);
  font-size: 14px;
  margin: 14px 0;
}

.benefit {
  margin: 10px 0;
  font-size: 13px;
  font-weight: 600;
}

.benefit span {
  color: var(--pink);
  margin-right: 7px;
}

.stats {
  background: var(--navy);
  color: white;
  padding: 42px 6%;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  text-align: center;
  gap: 20px;
}

.stats strong {
  display: block;
  color: #ffb8d5;
  font-size: 32px;
}

.stats span { font-size: 12px; }

.appointment {
  background: #fff0f6;
  padding: 40px;
  margin: 60px 6%;
  border-radius: 16px;
  border: 1px solid #f8d4e4;
}

.appointment h2 {
  color: var(--navy);
  font-size: 34px;
  margin: 8px 0;
}

.appointment > p {
  color: var(--muted);
  margin-bottom: 25px;
  font-size: 14px;
}

.form-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 17px;
}

.form-field label {
  display: block;
  font-size: 12px;
  font-weight: 800;
  margin-bottom: 6px;
}

.form-field input,
.form-field select,
.form-field textarea {
  width: 100%;
  padding: 13px;
  border: 1px solid #e8ccdc;
  background: white;
  border-radius: 7px;
  outline-color: var(--blue);
}

.form-field textarea {
  resize: vertical;
  min-height: 85px;
}

.full { grid-column: 1 / -1; }

footer {
  background: #172b50;
  color: white;
  padding: 42px 6% 20px;
}

.footer-grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1fr;
  gap: 35px;
}

footer h2, footer h3 { margin-bottom: 12px; }

footer h2 span { color: #ffb8d5; }

footer p, footer a {
  display: block;
  color: #d3dff2;
  font-size: 12px;
  margin: 7px 0;
}

footer a:hover { color: #ffb8d5; }

.copyright {
  border-top: 1px solid #ffffff25;
  margin-top: 30px;
  padding-top: 18px;
  text-align: center;
  font-size: 11px;
  color: #d3dff2;
}

.toast {
  display: none;
  position: fixed;
  right: 20px;
  bottom: 20px;
  background: var(--navy);
  color: white;
  padding: 14px 20px;
  border-radius: 9px;
  z-index: 30;
  max-width: 90%;
  box-shadow: 0 8px 25px #0002;
}

.modal {
  display: none;
  position: fixed;
  inset: 0;
  z-index: 25;
  background: #172b50a8;
  align-items: center;
  justify-content: center;
  padding: 18px;
}

.modal.open { display: flex; }

.modal-box {
  background: white;
  padding: 28px;
  border-radius: 14px;
  width: 100%;
  max-width: 480px;
  max-height: 90vh;
  overflow: auto;
  border-top: 5px solid var(--pink);
}

.modal-box h2 { color: var(--navy); }

.modal-box p {
  color: var(--muted);
  font-size: 13px;
  margin: 8px 0 18px;
}

.modal-actions {
  display: flex;
  gap: 10px;
  margin-top: 20px;
}

@media(max-width:950px) {
  header { justify-content: center; }
  .departments { grid-template-columns: repeat(2, 1fr); }
  .doctor-grid { grid-template-columns: repeat(2, 1fr); }
  .quick-services { margin-left: 4%; margin-right: 4%; }
}

@media(max-width:650px) {
  .topbar { justify-content: center; text-align: center; }
  nav { justify-content: center; gap: 13px; }
  .hero { margin: 10px; padding: 35px 22px; min-height: 440px; }
  .quick-services { grid-template-columns: repeat(2, 1fr); margin-top: 18px; }
  .section { padding: 48px 5%; }
  .departments, .doctor-grid, .about { grid-template-columns: 1fr; }
  .doctor-card img { height: 280px; }
  .about { gap: 30px; }
  .about-image img { height: 280px; }
  .experience { right: 10px; }
  .stats { grid-template-columns: repeat(2, 1fr); }
  .appointment { margin: 30px 5%; padding: 23px; }
  .form-grid { grid-template-columns: 1fr; }
  .full { grid-column: auto; }
  .footer-grid { grid-template-columns: 1fr; gap: 20px; }
  .doctor-tools input, .doctor-tools select { width: 100%; }
}
</style>
</head>

<body>

<div class="topbar">
  <span>✚ Compassionate Care. Better Health.</span>
  <span>☎ Emergency assistance: 112 (India)</span>
</div>

<header>
  <a href="#home" class="logo">Care<span>Plus</span>
    <small>HOSPITAL & WELLNESS</small>
  </a>

  <nav>
    <a href="#home">Home</a>
    <a href="#departments">Departments</a>
    <a href="#doctors">Our Doctors</a>
    <a href="#about">About Us</a>
    <a href="#appointment">Appointments</a>
  </nav>

  <button class="btn primary" onclick="scrollToAppointment()">
    Book Appointment
  </button>
</header>

<section class="hero" id="home">
  <div class="hero-content">
    <div class="eyebrow">Your health, our priority</div>
    <h1>Expert care.<br>Healthier lives.</h1>
    <p>
      Welcome to CarePlus Hospital. Explore medical departments,
      meet our featured doctors and request an appointment in minutes.
    </p>
    <div class="hero-actions">
      <button class="btn primary" onclick="scrollToAppointment()">
        Book an Appointment →
      </button>
      <button class="btn outline"
        onclick="document.getElementById('departments').scrollIntoView({behavior:'smooth'})">
        Explore Services
      </button>
    </div>
  </div>
</section>

<div class="quick-services">
  <article class="quick-card">
    <div class="emoji">🩺</div>
    <h3>Expert Doctors</h3>
    <p>Explore specialties</p>
  </article>
  <article class="quick-card">
    <div class="emoji">🏥</div>
    <h3>Medical Departments</h3>
    <p>Care in one place</p>
  </article>
  <article class="quick-card">
    <div class="emoji">📅</div>
    <h3>Easy Appointments</h3>
    <p>Request online</p>
  </article>
  <article class="quick-card">
    <div class="emoji">💗</div>
    <h3>Patient First</h3>
    <p>Care with compassion</p>
  </article>
</div>

<section class="section" id="departments">
  <div class="heading">
    <div class="eyebrow">Our medical services</div>
    <h2>Explore Our Departments</h2>
    <p>Find a department to help you navigate your healthcare needs.</p>
  </div>

  <div class="departments">
    <article class="department">
      <div class="dept-icon">❤️</div>
      <h3>Cardiology</h3>
      <p>Heart health consultations and cardiovascular care.</p>
      <button onclick="chooseDepartment('Cardiology')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">🧠</div>
      <h3>Neurology</h3>
      <p>Specialist consultations for nervous system conditions.</p>
      <button onclick="chooseDepartment('Neurology')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">🦴</div>
      <h3>Orthopedics</h3>
      <p>Consultations for bones, joints and mobility concerns.</p>
      <button onclick="chooseDepartment('Orthopedics')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">👶</div>
      <h3>Pediatrics</h3>
      <p>Healthcare services for infants, children and adolescents.</p>
      <button onclick="chooseDepartment('Pediatrics')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">🌸</div>
      <h3>Gynecology</h3>
      <p>Women's health consultations and routine care.</p>
      <button onclick="chooseDepartment('Gynecology')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">🩺</div>
      <h3>General Medicine</h3>
      <p>General consultations and ongoing health management.</p>
      <button onclick="chooseDepartment('General Medicine')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">👁️</div>
      <h3>Ophthalmology</h3>
      <p>Eye examinations and vision-related consultations.</p>
      <button onclick="chooseDepartment('Ophthalmology')">Find a Doctor →</button>
    </article>

    <article class="department">
      <div class="dept-icon">🧪</div>
      <h3>Diagnostics</h3>
      <p>Information about laboratory and diagnostic services.</p>
      <button onclick="showToast('Contact the hospital to enquire about diagnostic services.')">Learn More →</button>
    </article>
  </div>
</section>

<section class="section doctor-section" id="doctors">
  <div class="heading">
    <div class="eyebrow">Meet our specialists</div>
    <h2>Find the Right Doctor</h2>
    <p>Browse sample doctor profiles and request a consultation.</p>
  </div>

  <div class="doctor-tools">
    <input id="doctor-search" type="search"
      placeholder="Search doctor or specialty..." oninput="renderDoctors()">

    <select id="specialty-filter" onchange="renderDoctors()">
      <option value="All">All Specialties</option>
      <option>Cardiology</option>
      <option>Neurology</option>
      <option>Orthopedics</option>
      <option>Pediatrics</option>
      <option>Gynecology</option>
      <option>General Medicine</option>
      <option>Ophthalmology</option>
    </select>
  </div>

  <div class="doctor-grid" id="doctor-grid"></div>
</section>

<section class="section" id="about">
  <div class="about">
    <div class="about-image">
      <img
        src="https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?auto=format&fit=crop&w=1000&q=85"
        alt="Healthcare professionals working together">
      <div class="experience">
        <strong>24/7</strong>Emergency Support
      </div>
    </div>

    <div>
      <div class="eyebrow">About CarePlus</div>
      <h2>Healthcare built around you.</h2>
      <p>
        We believe healthcare should feel welcoming, accessible and
        patient-focused. Our demo hospital website brings key services,
        doctor profiles and appointment requests together in one place.
      </p>
      <div class="benefit"><span>✓</span> Easy access to department information</div>
      <div class="benefit"><span>✓</span> Convenient appointment request form</div>
      <div class="benefit"><span>✓</span> Simple doctor search and filtering</div>
      <div class="benefit"><span>✓</span> Responsive desktop and mobile design</div>
      <br>
      <button class="btn primary" onclick="scrollToAppointment()">
        Request an Appointment →
      </button>
    </div>
  </div>
</section>

<section class="stats">
  <div><strong>8+</strong><span>Medical Departments</span></div>
  <div><strong>7+</strong><span>Sample Doctor Profiles</span></div>
  <div><strong>24/7</strong><span>Emergency Information</span></div>
  <div><strong>100%</strong><span>Patient-Focused Design</span></div>
</section>

<section class="appointment" id="appointment">
  <div class="eyebrow">We are here to help</div>
  <h2>Request an Appointment</h2>
  <p>Fill in the form to preview a demo appointment request.</p>

  <form id="appointment-form">
    <div class="form-grid">
      <div class="form-field">
        <label for="patient-name">Patient Name *</label>
        <input id="patient-name" required maxlength="100"
          placeholder="Enter full name">
      </div>

      <div class="form-field">
        <label for="patient-phone">Phone Number *</label>
        <input id="patient-phone" type="tel" required
          pattern="[0-9+() -]{8,18}" placeholder="+91 98765 43210">
      </div>

      <div class="form-field">
        <label for="patient-email">Email Address</label>
        <input id="patient-email" type="email"
          placeholder="you@example.com">
      </div>

      <div class="form-field">
        <label for="appointment-department">Department *</label>
        <select id="appointment-department" required>
          <option value="">Choose department</option>
          <option>Cardiology</option>
          <option>Neurology</option>
          <option>Orthopedics</option>
          <option>Pediatrics</option>
          <option>Gynecology</option>
          <option>General Medicine</option>
          <option>Ophthalmology</option>
        </select>
      </div>

      <div class="form-field">
        <label for="appointment-doctor">Preferred Doctor</label>
        <select id="appointment-doctor">
          <option value="">Any available doctor</option>
        </select>
      </div>

      <div class="form-field">
        <label for="appointment-date">Preferred Date *</label>
        <input id="appointment-date" type="date" required>
      </div>

      <div class="form-field">
        <label for="appointment-time">Preferred Time *</label>
        <select id="appointment-time" required>
          <option value="">Choose a time</option>
          <option>09:00 AM</option>
          <option>10:00 AM</option>
          <option>11:00 AM</option>
          <option>12:00 PM</option>
          <option>02:00 PM</option>
          <option>03:00 PM</option>
          <option>04:00 PM</option>
          <option>05:00 PM</option>
        </select>
      </div>

      <div class="form-field">
        <label for="visit-type">Visit Type</label>
        <select id="visit-type">
          <option>First Visit</option>
          <option>Follow-up Visit</option>
          <option>Routine Check-up</option>
        </select>
      </div>

      <div class="form-field full">
        <label for="patient-notes">Additional Notes (Optional)</label>
        <textarea id="patient-notes" maxlength="500"
          placeholder="Optional scheduling notes only. Avoid sensitive medical information."></textarea>
      </div>

      <div class="full">
        <button class="btn primary" type="submit">
          Submit Demo Request →
        </button>
      </div>
    </div>
  </form>
</section>

<footer>
  <div class="footer-grid">
    <div>
      <h2>Care<span style="color:#ffb8d5">Plus</span> Hospital</h2>
      <p>Healthcare information designed to make your next step easier.</p>
      <p>📍 Hyderabad, Telangana, India</p>
      <p>☎ Demo contact: +91 98765 43210</p>
      <p>For emergencies, contact local emergency services.</p>
    </div>

    <div>
      <h3>Quick Links</h3>
      <a href="#departments">Departments</a>
      <a href="#doctors">Find a Doctor</a>
      <a href="#about">About Us</a>
      <a href="#appointment">Appointments</a>
    </div>

    <div>
      <h3>Patient Information</h3>
      <a href="#appointment">Appointment Requests</a>
      <a href="#departments">Medical Services</a>
      <a href="#about">Hospital Information</a>
    </div>
  </div>

  <div class="copyright">
    © 2026 CarePlus Hospital — Demo UI for learning and portfolio use.
    <br>Doctor profiles, fees and availability are illustrative.
    No real appointments are booked.
  </div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<div class="modal" id="confirmation-modal" role="dialog"
  aria-modal="true" aria-labelledby="confirmation-title">
  <div class="modal-box">
    <h2 id="confirmation-title">Demo Request Preview</h2>
    <p id="confirmation-details"></p>
    <p><strong>This is only a front-end demonstration.</strong>
      No appointment was booked and no information was sent to a hospital.</p>
    <div class="modal-actions">
      <button class="btn primary" onclick="closeConfirmation()">Done</button>
      <button class="btn outline" onclick="closeConfirmation()">Close</button>
    </div>
  </div>
</div>

<script>
const doctors = [
  {
    id: 1,
    name: "Dr. Ananya Sharma",
    specialty: "Cardiology",
    experience: "12 years of experience",
    fee: 800,
    image: "photo-1559839734-2b71ea197ec2",
    description: "Cardiology consultations and heart health assessment."
  },
  {
    id: 2,
    name: "Dr. Rahul Verma",
    specialty: "Neurology",
    experience: "10 years of experience",
    fee: 750,
    image: "photo-1612349317150-e413f6a5b16d",
    description: "Neurology consultations and nervous system care."
  },
  {
    id: 3,
    name: "Dr. Priya Reddy",
    specialty: "Gynecology",
    experience: "9 years of experience",
    fee: 700,
    image: "photo-1594824476967-48c8b964273f",
    description: "Women's health and routine consultations."
  },
  {
    id: 4,
    name: "Dr. Arjun Rao",
    specialty: "Orthopedics",
    experience: "11 years of experience",
    fee: 650,
    image: "photo-1622253692010-333f2da6031d",
    description: "Bone, joint and mobility consultations."
  },
  {
    id: 5,
    name: "Dr. Meera Iyer",
    specialty: "Pediatrics",
    experience: "8 years of experience",
    fee: 600,
    image: "photo-1559839734-2b71ea197ec2",
    description: "General healthcare consultations for children."
  },
  {
    id: 6,
    name: "Dr. Kiran Kumar",
    specialty: "General Medicine",
    experience: "14 years of experience",
    fee: 500,
    image: "photo-1612349317150-e413f6a5b16d",
    description: "General consultations and routine check-ups."
  },
  {
    id: 7,
    name: "Dr. Sneha Rao",
    specialty: "Ophthalmology",
    experience: "7 years of experience",
    fee: 550,
    image: "photo-1594824476967-48c8b964273f",
    description: "Eye health and vision consultations."
  }
];

function money(amount) {
  return new Intl.NumberFormat("en-IN", {
    style: "currency",
    currency: "INR",
    maximumFractionDigits: 0
  }).format(amount);
}

function renderDoctors() {
  const query = document.getElementById("doctor-search")
    .value.toLowerCase().trim();
  const specialty = document.getElementById("specialty-filter").value;

  const filtered = doctors.filter(doctor =>
    (doctor.name + " " + doctor.specialty).toLowerCase().includes(query) &&
    (specialty === "All" || doctor.specialty === specialty)
  );

  const grid = document.getElementById("doctor-grid");

  if (!filtered.length) {
    grid.innerHTML = "<p>No matching sample profiles. Try another search.</p>";
    return;
  }

  grid.innerHTML = filtered.map(doctor => `
    <article class="doctor-card">
      <img
        src="https://images.unsplash.com/${doctor.image}?auto=format&fit=crop&w=700&q=80"
        alt="Illustrative profile image for ${doctor.name}"
        loading="lazy"
        onerror="this.onerror=null;this.src='https://placehold.co/700x450/fff0f6/233b69?text=Doctor+Profile'">
      <div class="doctor-info">
        <span class="available">SAMPLE PROFILE</span>
        <h3>${doctor.name}</h3>
        <div class="specialty">${doctor.specialty}</div>
        <p>${doctor.experience}<br>${doctor.description}</p>
        <div class="doctor-bottom">
          <span class="fee">${money(doctor.fee)} <small>/ visit</small></span>
          <button class="btn primary" onclick="bookDoctor(${doctor.id})">
            Request Visit
          </button>
        </div>
      </div>
    </article>
  `).join("");
}

function chooseDepartment(specialty) {
  document.getElementById("specialty-filter").value = specialty;
  document.getElementById("doctor-search").value = "";
  renderDoctors();
  document.getElementById("doctors").scrollIntoView({ behavior: "smooth" });
}

function scrollToAppointment() {
  document.getElementById("appointment").scrollIntoView({
    behavior: "smooth"
  });
}

function bookDoctor(id) {
  const doctor = doctors.find(d => d.id === id);

  document.getElementById("appointment-department").value =
    doctor.specialty;

  updateDoctorOptions();

  document.getElementById("appointment-doctor").value =
    String(doctor.id);

  scrollToAppointment();
  showToast("Selected sample profile: " + doctor.name);
}

function updateDoctorOptions() {
  const specialty = document.getElementById("appointment-department").value;
  const select = document.getElementById("appointment-doctor");

  const availableDoctors = doctors.filter(d =>
    !specialty || d.specialty === specialty
  );

  select.innerHTML = '<option value="">Any available doctor</option>' +
    availableDoctors.map(d =>
      `<option value="${d.id}">${d.name}</option>`
    ).join("");
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
  document.getElementById("confirmation-modal").classList.remove("open");
}

document.getElementById("appointment-department")
  .addEventListener("change", updateDoctorOptions);

const dateInput = document.getElementById("appointment-date");

function localDateString(date) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  return `${year}-${month}-${day}`;
}

dateInput.min = localDateString(new Date());

document.getElementById("appointment-form")
  .addEventListener("submit", function(event) {
    event.preventDefault();

    const selectedDate = dateInput.value;
    const today = localDateString(new Date());

    if (selectedDate < today) {
      showToast("Please select today or a future date.");
      return;
    }

    const name = document.getElementById("patient-name").value.trim();
    const phone = document.getElementById("patient-phone").value.trim();
    const department = document.getElementById("appointment-department").value;
    const doctorId = document.getElementById("appointment-doctor").value;
    const doctor = doctors.find(d => String(d.id) === doctorId);
    const time = document.getElementById("appointment-time").value;
    const visitType = document.getElementById("visit-type").value;

    const details = [
      "Patient: " + name,
      "Phone: " + phone,
      "Department: " + department,
      "Doctor: " + (doctor ? doctor.name : "No preference"),
      "Preferred date: " + selectedDate,
      "Preferred time: " + time,
      "Visit type: " + visitType
    ].join("\n");

    document.getElementById("confirmation-details").style.whiteSpace =
      "pre-line";
    document.getElementById("confirmation-details").textContent = details;

    document.getElementById("confirmation-modal").classList.add("open");
  });

document.getElementById("confirmation-modal")
  .addEventListener("click", function(event) {
    if (event.target === this) closeConfirmation();
  });

document.addEventListener("keydown", function(event) {
  if (event.key === "Escape") closeConfirmation();
});

renderDoctors();
updateDoctorOptions();
</script>

</body>
</html>
