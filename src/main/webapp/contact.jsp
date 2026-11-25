<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact - UAMSAT</title>
<link rel="shortcut icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="manifest" href="manifest.webmanifest">
<meta name="theme-color" content="#0A234B">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="UAMSAT">
<link rel="apple-touch-icon" href="assets/img/logo-uamsat.png">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Poppins',sans-serif}
body{background:#F2F6FC;color:#1A1A1A;overflow-x:hidden}
a{text-decoration:none}
img{max-width:100%;height:auto}
.topbar{background:#0A234B;color:#fff;font-size:13px;padding:9px 5%;display:flex;justify-content:space-between;flex-wrap:wrap;gap:6px}
.topbar b{color:#FFD700}
.menu{background:#fff;display:flex;justify-content:space-between;align-items:center;padding:12px 5%;box-shadow:0 4px 20px rgba(0,0,0,.08);position:sticky;top:0;z-index:100;position:relative}
.logo{display:flex;align-items:center;gap:10px;font-weight:800;font-size:22px;color:#144A9A;white-space:nowrap}
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
.wrap{max-width:1100px;margin:0 auto;padding:0 18px}
.hero{text-align:center;padding:45px 18px 10px}
.hero h1{font-family:'Playfair Display',serif;font-size:42px;color:#144A9A;line-height:1.15}
.hero h1 span{color:#C9A227}
.hero p{color:#64748B;margin-top:12px;line-height:1.6}
.contact-grid{display:flex;gap:20px;padding:30px 18px 40px;align-items:flex-start}
.contact-infos{flex:1;min-width:0;display:flex;flex-direction:column;gap:14px}
.info-card{background:#fff;border-radius:16px;padding:18px;box-shadow:0 8px 20px rgba(0,0,0,.05);display:flex;gap:14px;align-items:flex-start;min-width:0}
.info-card i{width:44px;height:44px;min-width:44px;background:#144A9A;color:#fff;border-radius:12px;display:flex;align-items:center;justify-content:center;font-size:18px}
.info-card b{display:block;font-size:15px}
.info-card span{color:#64748B;font-size:14px;line-height:1.6;word-break:break-word}
.contact-form{flex:1.2;min-width:0;background:#fff;border-radius:20px;padding:26px;box-shadow:0 12px 30px rgba(0,0,0,.06)}
.contact-form h2{font-size:20px;color:#144A9A;margin-bottom:6px}
.contact-form p{color:#64748B;font-size:14px;margin-bottom:16px;line-height:1.6}
.contact-form label{display:block;font-size:13px;font-weight:700;margin:12px 0 6px}
.contact-form input,.contact-form textarea,.contact-form select{width:100%;padding:12px 14px;border:1px solid #E2E8F0;border-radius:12px;font-size:15px;font-family:'Poppins',sans-serif;max-width:100%}
.contact-form textarea{height:120px;resize:vertical}
.btn-envoyer{width:100%;background:#C9A227;color:#fff;border:none;padding:15px;border-radius:30px;font-size:16px;font-weight:800;cursor:pointer;margin-top:16px}
.btn-whatsapp{display:block;text-align:center;background:#25D366;color:#fff;padding:14px;border-radius:30px;font-weight:800;margin-top:12px}
footer{background:#0A234B;color:#CBD5E1;padding:35px 5% 18px;margin-top:20px}
footer h3{color:#fff}
.foot-liens{margin-top:14px;text-align:center}
.foot-liens a{color:#E2E8F0;font-size:13px;margin:0 6px}
@media(max-width:900px){
  .menu{padding:10px 14px;flex-wrap:nowrap}
  .logo{font-size:18px}
  .menu-burger{display:flex}
  .menu-liens{position:absolute;top:100%;left:0;right:0;width:100%;background:#fff;flex-direction:column;align-items:stretch;padding:0 0 14px 0;box-shadow:0 15px 30px rgba(0,0,0,.15);display:none;z-index:99}
  .menu-liens.ouvert{display:flex}
  .menu-liens a{margin:0;padding:14px 18px;border-bottom:1px solid #F1F5F9;font-size:15px}
  .menu-liens a.actif{border-bottom:1px solid #F1F5F9}
  .menu-liens a.btn-or{margin:12px 18px 0 18px;border-radius:30px;text-align:center;border:none}
  .hero h1{font-size:30px}
  .contact-grid{flex-direction:column;gap:16px;padding:20px 14px 30px}
  .contact-infos,.contact-form{width:100%}
}
@media(max-width:480px){
  .topbar{justify-content:center;text-align:center;font-size:12px}
  .logo{font-size:16px}
  .logo img{width:44px;height:44px}
  .hero{padding:30px 14px 5px}
  .hero h1{font-size:25px}
  .contact-form{padding:18px 14px}
  .info-card{padding:14px}
  .info-card i{width:38px;height:38px;min-width:38px;font-size:16px}
}
</style>
</head>
<body>
<div class="topbar"><span>Contact UAMSAT</span><span>Tel : <b>+223 90 26 96 27</b></span></div>
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
<div class="wrap">
  <div class="hero">
    <h1>Contactez <span>UAMSAT</span></h1>
    <p>Une question sur les formations, les tarifs ou l'admission ? Ecrivez-nous, on vous repond rapidement.</p>
  </div>
  <div class="contact-grid">
    <div class="contact-infos">
      <div class="info-card"><i class="fa-solid fa-location-dot"></i><div><b>Adresse</b><span>Avenue du 3e Pont - Missabougou, Bamako<br>Cite UNICEF face a la station SONEF</span></div></div>
      <div class="info-card"><i class="fa-solid fa-phone"></i><div><b>Telephone</b><span>+223 90 26 96 27<br>+223 65 32 32 42</span></div></div>
      <div class="info-card"><i class="fa-solid fa-envelope"></i><div><b>Email</b><span>infos@uamsat.com<br>www.uamsat.com</span></div></div>
      <div class="info-card"><i class="fa-solid fa-clock"></i><div><b>Horaires</b><span>Lundi - Vendredi : 8h00 - 18h00<br>Samedi : 9h00 - 13h00</span></div></div>
    </div>
    <div class="contact-form">
      <h2>Envoyez un message</h2>
      <p>Remplissez ce formulaire, votre message part sur WhatsApp.</p>
      <form onsubmit="envoyerWhatsApp(event)">
        <label>Votre nom</label>
        <input type="text" id="nom" placeholder="Votre nom complet" required>
        <label>Votre telephone</label>
        <input type="tel" id="tel" placeholder="+223 ..." required>
        <label>Votre message</label>
        <textarea id="msg" placeholder="Bonjour UAMSAT, je veux des infos sur..." required></textarea>
        <button type="submit" class="btn-envoyer">Envoyer sur WhatsApp</button>
      </form>
      <a class="btn-whatsapp" href="https://wa.me/22364716909?text=Bonjour%20UAMSAT%2C%20je%20veux%20des%20infos" target="_blank"><i class="fa-brands fa-whatsapp"></i> WhatsApp direct : +223 64 71 69 09</a>
    </div>
  </div>
</div>
<footer>
  <h3>UAMSAT<span style="color:#FFD700">.</span></h3>
  <p class="foot-liens"><a href="index.jsp">Accueil</a> | <a href="about.jsp">A Propos</a> | <a href="formations.jsp">Formations</a> | <a href="admission.jsp">Admission</a> | <a href="contact.jsp">Contact</a></p>
</footer>
<script>
document.getElementById('menuBurger').addEventListener('click', function(){
  document.getElementById('menuLiens').classList.toggle('ouvert');
  this.classList.toggle('ouvert');
});
document.querySelectorAll('#menuLiens a').forEach(function(l){
  l.addEventListener('click', function(){
    document.getElementById('menuLiens').classList.remove('ouvert');
    document.getElementById('menuBurger').classList.remove('ouvert');
  });
});
function envoyerWhatsApp(e){
  e.preventDefault();
  var nom = document.getElementById('nom').value;
  var tel = document.getElementById('tel').value;
  var msg = document.getElementById('msg').value;
  var texte = 'Bonjour UAMSAT, je suis ' + nom + ' (' + tel + '). ' + msg;
  window.open('https://wa.me/22364716909?text=' + encodeURIComponent(texte), '_blank');
}
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
</script>
</body>
</html>
