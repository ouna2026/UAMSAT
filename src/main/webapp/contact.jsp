<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact - UAMSAT</title>

<link rel="icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="apple-touch-icon" href="assets/img/logo-uamsat.png">
<link rel="manifest" href="manifest.webmanifest">
<meta name="theme-color" content="#0A1F44">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="UAMSAT">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Poppins',sans-serif}
body{background:#F2F6FC;color:#1A1A1A;overflow-x:hidden}
a{text-decoration:none}
img{max-width:100%;height:auto}
.topbar{background:#0A234B;color:#fff;font-size:13px;padding:9px 5%;display:flex;justify-content:space-between;flex-wrap:wrap;gap:6px}
.topbar b{color:#FFD700}
.menu{background:#fff;display:flex;justify-content:space-between;align-items:center;padding:12px 5%;box-shadow:0 4px 20px rgba(0,0,0,.08);flex-wrap:wrap;position:sticky;top:0;z-index:100}
.logo{font-weight:800;font-size:22px;color:#144A9A;display:flex;align-items:center;gap:10px;white-space:nowrap}
.logo small{color:#C9A227}
.logo img{width:52px;height:52px;object-fit:contain}
.menu-liens{display:flex;align-items:center}
.menu-liens a{color:#1A1A1A;font-weight:600;font-size:14px;margin-left:20px;white-space:nowrap}
.menu-liens a.actif{color:#144A9A;border-bottom:3px solid #C9A227;padding-bottom:4px}
.btn-or{background:#C9A227!important;color:#fff!important;padding:10px 20px;border-radius:30px}
.menu-burger{display:none;width:42px;height:42px;background:#0A234B;border:none;border-radius:10px;cursor:pointer;flex-direction:column;align-items:center;justify-content:center;gap:6px;flex-shrink:0}
.menu-burger span{display:block;width:22px;height:3px;background:#fff;border-radius:3px;transition:.3s}
.menu-burger.ouvert span:nth-child(1){transform:translateY(9px) rotate(45deg)}
.menu-burger.ouvert span:nth-child(2){opacity:0}
.menu-burger.ouvert span:nth-child(3){transform:translateY(-9px) rotate(-45deg)}
.hero{background:linear-gradient(135deg,#0A234B 0%,#144A9A 55%,#1E5AA8 100%);color:#fff;padding:55px 5% 70px;position:relative;overflow:hidden}
.hero::after{content:"";position:absolute;right:-60px;top:-60px;width:260px;height:260px;background:rgba(255,255,255,.08);border-radius:50%}
.hero::before{content:"";position:absolute;right:80px;bottom:-80px;width:180px;height:180px;background:#C9A227;opacity:.25;border-radius:50%}
.hero-inner{max-width:1120px;margin:0 auto;display:grid;grid-template-columns:1.05fr 0.95fr;gap:35px;align-items:center;position:relative;z-index:2}
.hero h1{font-family:'Playfair Display',serif;font-size:48px;line-height:1.12}
.hero h1 span{color:#FFD700}
.hero p{color:#E2E8F0;margin-top:14px;line-height:1.7;font-size:15.5px}
.hero-badges{display:flex;gap:10px;flex-wrap:wrap;margin-top:20px}
.hero-badges span{background:rgba(255,255,255,.15);border:1px solid rgba(255,255,255,.25);padding:8px 14px;border-radius:30px;font-size:13px;font-weight:600}
.hero-right{position:relative;min-width:0}
.hero-right img{width:100%;max-width:430px;height:auto;border-radius:22px;display:block;margin-left:auto;box-shadow:0 25px 50px rgba(0,0,0,.35);position:relative;z-index:2}
.float-w{position:absolute;left:10px;bottom:20px;background:#fff;color:#1A1A1A;padding:12px 16px;border-radius:14px;box-shadow:0 15px 30px rgba(0,0,0,.3);z-index:3;display:flex;gap:10px;align-items:center}
.float-w i{width:38px;height:38px;background:#25D366;color:#fff;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:18px;margin:0}
.float-w b{font-size:14px}
.float-w span{font-size:12px;color:#64748B}
.wrap{max-width:1120px;margin:-35px auto 0;padding:0 20px 60px;position:relative;z-index:5}
.cards{display:grid;grid-template-columns:1fr 1fr 1fr 1fr;gap:16px}
.cards div{background:#fff;border-radius:18px;padding:22px;box-shadow:0 15px 30px rgba(0,0,0,.08);text-align:center;min-width:0}
.cards i{width:52px;height:52px;border-radius:14px;display:flex;align-items:center;justify-content:center;font-size:22px;margin:0 auto 12px}
.i1{background:#DBEAFE;color:#144A9A}.i2{background:#DCFCE7;color:#16A34A}.i3{background:#FEF3C7;color:#D97706}.i4{background:#EDE9FE;color:#7C3AED}
.cards b{color:#144A9A;font-size:15px}
.cards p{color:#64748B;font-size:13.5px;line-height:1.6;margin-top:6px;word-wrap:break-word}
.cards a{color:#144A9A;font-weight:700;font-size:13.5px;word-break:break-all}
.form-zone{display:grid;grid-template-columns:1.1fr 0.9fr;gap:25px;margin-top:30px}
.form-card{background:#fff;border-radius:22px;padding:30px;box-shadow:0 15px 35px rgba(0,0,0,.07);min-width:0}
.form-card h2{font-family:'Playfair Display',serif;font-size:27px;color:#144A9A}
.form-card p{color:#64748B;font-size:14px;line-height:1.6;margin:8px 0 18px}
label{display:block;font-size:13px;font-weight:700;margin:13px 0 6px}
input,select,textarea{width:100%;padding:13px 14px;border:2px solid #E2E8F0;border-radius:12px;font-size:14px;background:#F8FAFC;font-family:'Poppins',sans-serif;max-width:100%}
input:focus,textarea:focus{outline:none;border-color:#144A9A;background:#fff}
.deux{display:grid;grid-template-columns:1fr 1fr;gap:14px}
.btn-send{width:100%;margin-top:20px;background:#C9A227;color:#fff;border:none;padding:15px;border-radius:30px;font-size:16px;font-weight:800;cursor:pointer}
.btn-whatsapp2{display:flex;align-items:center;justify-content:center;gap:10px;background:#25D366;color:#fff!important;padding:14px;border-radius:30px;font-weight:800;margin-top:12px;font-size:15px;text-align:center}
.info-side{background:#0A234B;color:#fff;border-radius:22px;padding:28px;height:fit-content;min-width:0}
.info-side h3{font-size:20px;margin-bottom:6px}
.info-side h3 span{color:#FFD700}
.info-side p{color:#CBD5E1;font-size:14px;line-height:1.7;margin-bottom:14px}
.info-line{display:flex;gap:12px;background:rgba(255,255,255,.08);border-radius:14px;padding:14px;margin-bottom:12px}
.info-line i{width:40px;height:40px;background:#C9A227;color:#fff;border-radius:10px;display:flex;align-items:center;justify-content:center;flex-shrink:0;margin:0}
.info-line b{font-size:14px}
.info-line span{font-size:13px;color:#CBD5E1}
.horaires{background:#fff;color:#1A1A1A;border-radius:14px;padding:16px;margin-top:14px;font-size:14px;line-height:1.8}
.horaires b{color:#144A9A}
footer{background:#0A234B;color:#CBD5E1;padding:40px 5% 20px}
footer h3{color:#fff;font-size:24px}
footer h3 span{color:#FFD700}
.foot{display:flex;justify-content:space-between;gap:30px;flex-wrap:wrap;margin-top:18px;font-size:14px;line-height:2}
.foot b{color:#fff}
.foot-liens{margin-top:18px;text-align:center}
.foot-liens a{color:#E2E8F0;font-size:13px;margin:0 6px}
.foot-bas{text-align:center;margin-top:22px;font-size:12px;border-top:1px solid rgba(255,255,255,.15);padding-top:14px}
@media(max-width:850px){
.hero-inner{grid-template-columns:1fr}
.hero h1{font-size:34px}
.hero-right img{margin:0 auto}
.cards{grid-template-columns:1fr 1fr}
.form-zone{grid-template-columns:1fr}
.deux{grid-template-columns:1fr}
}
@media(max-width:768px){
  .topbar{justify-content:center;text-align:center;font-size:12px}
  .menu{padding:10px 14px;flex-wrap:nowrap!important}
  .logo{font-size:18px}
  .menu-burger{display:flex!important}
  .menu-liens{position:absolute!important;top:100%!important;left:0!important;right:0!important;width:100%!important;background:#fff!important;flex-direction:column!important;align-items:stretch!important;padding:0 0 14px 0!important;box-shadow:0 15px 30px rgba(0,0,0,.15)!important;display:none!important;z-index:99}
  .menu-liens.ouvert{display:flex!important}
  .menu-liens a{margin:0!important;padding:14px 18px!important;border-bottom:1px solid #F1F5F9!important;font-size:15px!important}
  .menu-liens a.actif{border-bottom:1px solid #F1F5F9!important}
  .menu-liens a.btn-or{margin:12px 18px 0 18px!important;border-radius:30px!important;text-align:center!important;border:none!important}
  .hero{padding:35px 14px 55px}
  .hero h1{font-size:30px}
  .wrap{padding:0 14px 40px}
  .cards{grid-template-columns:1fr 1fr}
  .form-card{padding:22px 14px}
  .info-side{padding:22px 14px}
  .foot{flex-direction:column;gap:16px}
}
@media(max-width:500px){
  .logo{font-size:16px;gap:8px}
  .logo img{width:44px;height:44px}
  .hero{padding:28px 12px 50px}
  .hero h1{font-size:25px}
  .hero-badges span{font-size:12px;padding:7px 11px}
  .float-w{left:50%;transform:translateX(-50%);white-space:nowrap}
  .cards{grid-template-columns:1fr}
  .form-card h2{font-size:22px}
  .btn-send{font-size:14px;padding:13px}
  .btn-whatsapp2{font-size:13px}
}
</style>
</head>
<body>

<div class="topbar"><span>UAMSAT - On te répond en moins de 24h</span><span>Tel : <b>+223 90 26 96 27</b></span></div>

<div class="menu">
  <div class="logo"><img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT"><div>UAMSAT<small>.</small></div></div>

  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp" class="actif">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</div>

<div class="hero">
  <div class="hero-inner">
    <div>
      <h1>Parlons de ton<br><span>avenir.</span></h1>
      <p>Une question sur les formations, les tarifs, les inscriptions ? Écris-nous, on te répond vite. UAMSAT est là pour t'aider à choisir ta filière.</p>
      <div class="hero-badges">
        <span>Réponse en 24h</span>
        <span>Missabougou - Bamako</span>
        <span>Depuis 2013</span>
      </div>
    </div>
    <div class="hero-right">
      <img src="assets/img/photo-groupe.jpg" alt="Groupe UAMSAT">
      <div class="float-w"><i class="fa-brands fa-whatsapp"></i><div><b>+223 64 71 69 09</b><br><span>WhatsApp - Réponse rapide</span></div></div>
    </div>
  </div>
</div>

<div class="wrap">
  <div class="cards">
    <div><i class="fa-solid fa-location-dot i1"></i><b>Adresse</b><p>Avenue du 3e Pont - Missabougou, Cité UNICEF face station SONEF, Bamako</p></div>
    <div><i class="fa-solid fa-phone i2"></i><b>Téléphones</b><p><a href="tel:+22390269627">+223 90 26 96 27</a><br><a href="tel:+22365323242">+223 65 32 32 42</a></p></div>
    <div><i class="fa-solid fa-envelope i3"></i><b>Email</b><p><a href="mailto:infos@uamsat.com">infos@uamsat.com</a><br>www.uamsat.com</p></div>
    <div><i class="fa-solid fa-clock i4"></i><b>Horaires</b><p>Lun - Ven : 8h à 17h<br>Sam : 9h à 13h</p></div>
  </div>

  <div class="form-zone">
    <div class="form-card">
      <h2>Envoie-nous un message</h2>
      <p>Remplis ce formulaire, ton message part direct sur le WhatsApp UAMSAT.</p>
      <form onsubmit="return envoyerWhatsApp(); return false;">
        <div class="deux">
          <div><label>Nom *</label><input type="text" id="c-nom" placeholder="Ton nom" required></div>
          <div><label>Prénom *</label><input type="text" id="c-prenom" placeholder="Ton prénom" required></div>
        </div>
        <label>Téléphone *</label>
        <input type="tel" id="c-tel" placeholder="+223 70 00 00 00" required>
        <label>Sujet *</label>
        <select id="c-sujet">
          <option>Je veux m'inscrire</option>
          <option>Je veux les tarifs</option>
          <option>Je veux les filières</option>
          <option>Autre question</option>
        </select>
        <label>Ton message *</label>
        <textarea id="c-msg" rows="4" placeholder="Bonjour UAMSAT, je veux savoir..." required></textarea>
        <button type="submit" class="btn-send">Envoyer le message</button>
        <a href="#" id="lien-wa" target="_blank" class="btn-whatsapp2"><i class="fa-brands fa-whatsapp"></i> Ou envoyer direct sur WhatsApp +223 64 71 69 09</a>
      </form>
    </div>

    <div class="info-side">
      <h3>Viens nous <span>voir !</span></h3>
      <p>Le plus simple, c'est de passer à l'école. On te fait visiter, on te montre les salles, on t'explique tout.</p>
      <div class="info-line"><i class="fa-solid fa-location-dot"></i><div><b>Adresse</b><br><span>Avenue du 3e Pont - Missabougou, Cité UNICEF face à la station SONEF, Bamako - Mali</span></div></div>
      <div class="info-line"><i class="fa-solid fa-phone"></i><div><b>Téléphones</b><br><span>+223 90 26 96 27 / +223 65 32 32 42</span></div></div>
      <div class="info-line"><i class="fa-solid fa-envelope"></i><div><b>Email</b><br><span>infos@uamsat.com - www.uamsat.com</span></div></div>
      <div class="horaires">
        <b>Horaires d'ouverture :</b><br>
        Lundi - Vendredi : 8h00 à 17h00<br>
        Samedi : 9h00 à 13h00<br>
        Dimanche : Fermé<br><br>
        <b>Compte BDM :</b><br>
        ML016 01207 020401383230 25
      </div>
    </div>
  </div>
</div>

<footer>
  <h3>UAMSAT<span>.</span></h3>
  <div class="foot">
    <div><b>Université UAMSAT</b><br>Université Africaine de Management,<br>des Sciences Appliquées et de Télécommunications<br><br>Avenue du 3e Pont - Missabougou<br>Cité UNICEF face à la station SONEF</div>
    <div><b>Contact</b><br>+223 90 26 96 27<br>+223 65 32 32 42<br>infos@uamsat.com<br>www.uamsat.com</div>
    <div><b>Partenariats</b><br> UBS - AUM - IST<br>CAMES - TechnoLAB-ISTA</div>
  </div>
  <p class="foot-liens"><a href="index.jsp">Accueil</a> | <a href="about.jsp">A Propos</a> | <a href="formations.jsp">Formations</a> | <a href="admission.jsp">Admission</a> | <a href="contact.jsp">Contact</a></p>
  <p class="foot-bas">© 2026 UAMSAT - Une École au service du développement, agréée, reconnue par l'État Malien et le CAMES.</p>
</footer>

<script>

document.getElementById('menuBurger').addEventListener('click', function(){
  document.getElementById('menuLiens').classList.toggle('ouvert');
  this.classList.toggle('ouvert');
});
document.querySelectorAll('#menuLiens a').forEach(function(lien){
  lien.addEventListener('click', function(){
    document.getElementById('menuLiens').classList.remove('ouvert');
    document.getElementById('menuBurger').classList.remove('ouvert');
  });
});
// PWA
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
function envoyerWhatsApp(){
  var nom = document.getElementById('c-nom').value.trim();
  var prenom = document.getElementById('c-prenom').value.trim();
  var tel = document.getElementById('c-tel').value.trim();
  var sujet = document.getElementById('c-sujet').value;
  var msg = document.getElementById('c-msg').value.trim();
  if(nom === "" || prenom === "" || tel === "" || msg === ""){
    alert("Remplis ton nom, prénom, téléphone et message.");
    return false;
  }
  var texte = "NOUVEAU MESSAGE - CONTACT UAMSAT\n\nNom : " + nom + "\nPrenom : " + prenom + "\nTelephone : " + tel + "\nSujet : " + sujet + "\nMessage : " + msg;
  var lien = "https://wa.me/22364716909?text=" + encodeURIComponent(texte);
  document.getElementById('lien-wa').href = lien;
  window.open(lien, '_blank');
  return false;
}
</script>
</body>
</html>
