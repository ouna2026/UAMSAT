<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>A Propos - UAMSAT</title>
<link rel="shortcut icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="manifest" href="manifest.webmanifest">
<meta name="theme-color" content="#0A234B">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="UAMSAT">
<link rel="apple-touch-icon" href="assets/img/logo-uamsat.png">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Poppins',sans-serif}
body{background:#F2F6FC;color:#1A1A1A;overflow-x:hidden}
a{text-decoration:none}
img{max-width:100%;height:auto;display:block}
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
.hero-about{text-align:center;padding:45px 18px 10px}
.hero-about h1{font-family:'Playfair Display',serif;font-size:42px;color:#144A9A;line-height:1.15}
.hero-about h1 span{color:#C9A227}
.hero-about p{color:#64748B;margin-top:12px;line-height:1.6;max-width:700px;margin-left:auto;margin-right:auto}
.about-main{display:flex;gap:30px;align-items:flex-start;padding:35px 18px 20px}
.about-texte{flex:1.2;min-width:0}
.about-texte h2{font-family:'Playfair Display',serif;font-size:30px;color:#144A9A;margin-bottom:14px}
.about-texte p{color:#475569;line-height:1.75;margin-bottom:12px;font-size:15px}
.about-texte ul{list-style:none;margin-top:14px}
.about-texte ul li{background:#fff;border-left:4px solid #C9A227;padding:12px 14px;border-radius:10px;margin-bottom:10px;font-size:14px;line-height:1.6;box-shadow:0 5px 15px rgba(0,0,0,.05)}
.about-photo{flex:1;min-width:0}
.about-photo img{width:100%;height:auto;border-radius:20px;box-shadow:0 20px 40px rgba(0,0,0,.15);object-fit:cover}
.about-photo p{text-align:center;color:#144A9A;font-weight:700;font-size:13px;margin-top:10px}
.valeurs{display:grid;grid-template-columns:repeat(3,1fr);gap:16px;padding:20px 18px 40px}
.valeurs div{background:#fff;padding:20px;border-radius:16px;box-shadow:0 8px 20px rgba(0,0,0,.05);min-width:0}
.valeurs i{color:#C9A227;font-size:22px;display:block;margin-bottom:10px}
.valeurs b{font-size:16px}
.valeurs span{color:#64748B;font-size:13px;line-height:1.6;display:block;margin-top:6px}
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
  .hero-about h1{font-size:30px}
  .about-main{flex-direction:column;gap:18px;padding:25px 14px 10px}
  .about-texte h2{font-size:24px}
  .valeurs{grid-template-columns:1fr 1fr;padding:15px 14px 30px}
}
@media(max-width:480px){
  .topbar{justify-content:center;text-align:center;font-size:12px}
  .logo{font-size:16px}
  .logo img{width:44px;height:44px}
  .hero-about{padding:30px 14px 5px}
  .hero-about h1{font-size:25px}
  .valeurs{grid-template-columns:1fr}
  .about-texte p{font-size:14px}
}
</style>
</head>
<body>
<div class="topbar"><span>UAMSAT - Universite Africaine</span><span>Tel : <b>+223 90 26 96 27</b></span></div>
<div class="menu">
  <div class="logo"><img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT"><div>UAMSAT<small>.</small></div></div>
  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>
  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp" class="actif">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</div>
<div class="wrap">
  <div class="hero-about">
    <h1>A Propos de <span>UAMSAT</span></h1>
    <p>Une universite innovante, au service du developpement, agreee et reconnue par l'Etat Malien et le CAMES.</p>
  </div>
  <div class="about-main">
    <div class="about-texte">
      <h2>Une universite innovante</h2>
      <p>L'Universite Africaine de Management, des Sciences Appliquees et de Telecommunications (UAMSAT) a ete creee le <b>16 Janvier 2013</b> par Decision N° 2013-00039/MESRS-SG.</p>
      <p>UAMSAT forme les leaders de demain par une pedagogie d'ouverture, la culture de l'excellence et l'innovation. Notre mission : <b>La Formation pour l'Employabilite.</b></p>
      <ul>
        <li><b>Diplomes reconnus</b> - Par l'Etat Malien et le CAMES</li>
        <li><b>Formations pratiques</b> - Des professeurs qui travaillent en entreprise</li>
        <li><b>Ouverture internationale</b> - Etudiants de plusieurs pays d'Afrique</li>
        <li><b>Stages et emploi</b> - Entreprises partenaires a Bamako</li>
      </ul>
    </div>
    <div class="about-photo">
      <img src="assets/img/a.png" alt="Inscriptions en cours UAMSAT">
      <p>INSCRIPTIONS EN COURS - 2026-2027</p>
    </div>
  </div>
  <div class="valeurs">
    <div><i class="fa-solid fa-award"></i><b>Excellence</b><span>La culture de l'excellence dans chaque formation.</span></div>
    <div><i class="fa-solid fa-lightbulb"></i><b>Innovation</b><span>Data, IA, Telecoms, les metiers de l'avenir.</span></div>
    <div><i class="fa-solid fa-handshake"></i><b>Employabilite</b><span>La formation pour trouver un emploi.</span></div>
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
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
</script>
</body>
</html>
