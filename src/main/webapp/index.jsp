<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>UAMSAT - Université Africaine de Management, des Sciences Appliquées et de Télécommunications</title>


<link rel="icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="apple-touch-icon" href="assets/img/logo-uamsat.png">
<link rel="manifest" href="manifest.webmanifest">
<meta name="theme-color" content="#0A1F44">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="UAMSAT">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800;900&family=Playfair+Display:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Poppins',sans-serif}
body{background:#F2F6FC;color:#1A1A1A;overflow-x:hidden}
a{text-decoration:none}
img{max-width:100%;height:auto}
/* Barre info qui défile */
.topbar{background:#0A234B;color:#fff;font-size:13px;font-weight:600;padding:9px 0;overflow:hidden;white-space:nowrap}
.topbar span{display:inline-block;padding-left:100%;animation:defile 25s linear infinite}
.topbar b{color:#FFD700}
@keyframes defile{from{transform:translateX(0)}to{transform:translateX(-100%)}}

.menu{position:sticky;top:0;z-index:100;background:#fff;display:flex;justify-content:space-between;align-items:center;padding:12px 5%;box-shadow:0 4px 20px rgba(0,0,0,.08)}
.logo{display:flex;align-items:center;gap:12px;font-weight:800;font-size:22px;color:#144A9A;white-space:nowrap}
.logo small{color:#C9A227}
.logo img{width:52px;height:52px;object-fit:contain}
.menu-liens{display:flex;align-items:center;gap:22px}
.menu-liens a{color:#1A1A1A;font-weight:600;font-size:14px;white-space:nowrap}
.menu-liens a.actif{color:#144A9A;border-bottom:3px solid #C9A227;padding-bottom:4px}
.btn-or{background:#C9A227!important;color:#fff!important;padding:10px 20px;border-radius:30px;font-weight:800}

.menu-burger{display:none;width:42px;height:42px;background:#0A234B;border:none;border-radius:10px;cursor:pointer;flex-direction:column;align-items:center;justify-content:center;gap:6px;flex-shrink:0}
.menu-burger span{display:block;width:22px;height:3px;background:#fff;border-radius:3px;transition:.3s}
.menu-burger.ouvert span:nth-child(1){transform:translateY(9px) rotate(45deg)}
.menu-burger.ouvert span:nth-child(2){opacity:0}
.menu-burger.ouvert span:nth-child(3){transform:translateY(-9px) rotate(-45deg)}

.hero{background:linear-gradient(135deg,#0A234B 0%,#144A9A 55%,#1E5AA8 100%);color:#fff;padding:55px 5% 60px;position:relative;overflow:hidden}
.hero-inner{max-width:1120px;margin:0 auto;display:grid;grid-template-columns:1.05fr 0.95fr;gap:35px;align-items:center;position:relative;z-index:2}
.hero h1{font-family:'Playfair Display',serif;font-size:48px;line-height:1.12}
.hero h1 span{color:#FFD700}
.hero p{color:#E2E8F0;margin-top:14px;line-height:1.7;font-size:15.5px}
.badge{display:inline-block;background:#C9A227;color:#fff;padding:8px 16px;border-radius:30px;font-size:12px;font-weight:700;letter-spacing:1px}
.hero-btns{display:flex;gap:12px;flex-wrap:wrap;margin-top:22px}
.btn-blanc{background:#fff;color:#144A9A;padding:13px 24px;border-radius:30px;font-weight:800;font-size:14px}
.btn-gold{background:#C9A227;color:#fff;padding:13px 24px;border-radius:30px;font-weight:800;font-size:14px}
.hero-right{position:relative;min-width:0;text-align:center}
.hero-right img{width:100%;max-width:430px;height:auto;border-radius:22px;display:block;margin-left:auto;box-shadow:0 25px 50px rgba(0,0,0,.35)}

.terre{position:absolute;top:-18px;right:10px;width:90px;height:90px;z-index:3;animation:tourne 12s linear infinite}
.terre img{width:100%;height:100%;object-fit:contain;box-shadow:none!important;border-radius:50%}
@keyframes tourne{from{transform:rotate(0deg)}to{transform:rotate(360deg)}}
.wrap{max-width:1120px;margin:0 auto;padding:0 20px 60px}
.section{padding:55px 0 10px}
.section h2{font-family:'Playfair Display',serif;font-size:32px;color:#144A9A;text-align:center}
.section h2 span{color:#C9A227}
.section p.sous{text-align:center;color:#64748B;margin:10px auto 28px;max-width:700px;line-height:1.6;font-size:15px}

.filtres{display:flex;justify-content:center;gap:10px;flex-wrap:wrap;margin-bottom:28px}
.filtres button{border:2px solid #E2E8F0;background:#fff;padding:10px 22px;border-radius:30px;font-weight:700;cursor:pointer;font-size:14px}
.filtres button.actif{background:#144A9A;color:#fff;border-color:#144A9A}

.cartes{display:grid;grid-template-columns:1fr 1fr 1fr;gap:20px}
.carte{background:#fff;border-radius:20px;padding:22px;box-shadow:0 15px 35px rgba(0,0,0,.07);transition:.3s;animation:flotte 4s ease-in-out infinite;min-width:0}
.carte:nth-child(2){animation-delay:.7s}
.carte:nth-child(3){animation-delay:1.4s}
@keyframes flotte{0%,100%{transform:translateY(0)}50%{transform:translateY(-8px)}}
.carte:hover{transform:translateY(-6px)}
.carte img{width:100%;height:200px;object-fit:cover;border-radius:14px}
.carte h3{color:#144A9A;font-size:18px;margin:14px 0 6px}
.carte p{color:#64748B;font-size:14px;line-height:1.6}
.carte .prix{color:#C9A227;font-weight:800;margin-top:10px;font-size:15px}
.carte .lien{display:inline-block;margin-top:12px;color:#144A9A;font-weight:800;font-size:14px}

.transparente{position:relative;border-radius:22px;overflow:hidden;margin-top:55px;padding:45px 28px;color:#fff;text-align:center;background:#0A234B}
.transparente::before{content:"";position:absolute;inset:0;background:url('assets/img/photo-classe.jpg') center/cover;opacity:.25}
.transparente div{position:relative;z-index:2}
.transparente h2{font-family:'Playfair Display',serif;font-size:30px}
.transparente p{margin:12px auto;max-width:650px;line-height:1.7;color:#E2E8F0}

.partenaires{display:flex;justify-content:center;align-items:center;gap:25px;flex-wrap:wrap;margin-top:25px}
.partenaires img{height:55px;width:auto;object-fit:contain;background:#fff;padding:8px 14px;border-radius:12px;box-shadow:0 8px 20px rgba(0,0,0,.06)}

.quiz-cta{background:#fff;border-radius:22px;padding:30px;text-align:center;box-shadow:0 15px 35px rgba(0,0,0,.07);margin-top:55px}
.quiz-cta h3{font-family:'Playfair Display',serif;font-size:26px;color:#144A9A}
.quiz-cta p{color:#64748B;margin:10px 0 18px;line-height:1.6}
footer{background:#0A234B;color:#CBD5E1;padding:40px 5% 20px}
footer h3{color:#fff;font-size:24px}
footer h3 span{color:#FFD700}
.foot{display:flex;justify-content:space-between;gap:30px;flex-wrap:wrap;margin-top:18px;font-size:14px;line-height:2}
.foot b{color:#fff}
.foot-liens{margin-top:18px;text-align:center}
.foot-liens a{color:#E2E8F0;font-size:13px;margin:0 6px}
.foot-bas{text-align:center;margin-top:22px;font-size:12px;border-top:1px solid rgba(255,255,255,.15);padding-top:14px}
@media(max-width:900px){
.hero-inner{grid-template-columns:1fr}
.hero-right img{margin:0 auto}
.cartes{grid-template-columns:1fr 1fr}
}
@media(max-width:768px){
  .topbar{font-size:12px}
  .menu{padding:10px 14px;flex-wrap:nowrap!important}
  .logo{font-size:18px}
  .menu-burger{display:flex!important}
  .menu-liens{position:absolute!important;top:100%!important;left:0!important;right:0!important;width:100%!important;background:#fff!important;flex-direction:column!important;align-items:stretch!important;gap:0!important;padding:0 0 14px 0!important;box-shadow:0 15px 30px rgba(0,0,0,.15)!important;display:none!important;z-index:99}
  .menu-liens.ouvert{display:flex!important}
  .menu-liens a{margin:0!important;padding:14px 18px!important;border-bottom:1px solid #F1F5F9!important;font-size:15px!important}
  .menu-liens a.actif{border-bottom:1px solid #F1F5F9!important}
  .menu-liens a.btn-or{margin:12px 18px 0 18px!important;border-radius:30px!important;text-align:center!important;border:none!important}
  .hero{padding:32px 14px 45px}
  .hero h1{font-size:30px}
  .hero-btns{justify-content:center}
  .wrap{padding:0 14px 40px}
  .section{padding:38px 0 5px}
  .section h2{font-size:26px}
  .cart{grid-template-columns:1fr 1fr}
  .transparente{padding:32px 14px}
  .transparente h2{font-size:24px}
  .foot{flex-direction:column;gap:16px}
}

@media(max-width:500px){
  .logo{font-size:16px;gap:8px}
  .logo img{width:44px;height:44px}
  .hero{padding:26px 12px 38px}
  .hero h1{font-size:25px}
  .cartes{grid-template-columns:1fr}
  .carte img{height:180px}
  .partenaires img{height:45px}
  .quiz-cta{padding:22px 14px}
}
</style>
</head>
<body>

<div class="topbar"><span>Admission 2026-2027 ouverte &nbsp;|&nbsp; Bourse <b>-30%</b> pour les 50 premiers inscrits &nbsp;|&nbsp; Tel : <b>+223 90 26 96 27</b> &nbsp;|&nbsp; La Formation pour l'Employabilité ! &nbsp;|&nbsp; Osez rêver, réalisez votre potentiel !</span></div>

<div class="menu">
  <div class="logo"><img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT"><div>UAMSAT<small>.</small></div></div>


  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp" class="actif">Accueil</a>
    <a href="about.jsp">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</div>

<div class="hero">
  <div class="hero-inner">
    <div>
      <span class="badge">ADMISSION 2026-2027 OUVERTE</span>
      <h1>Osez rêver,<br><span>réalisez votre potentiel !</span></h1>
      <p>Université Africaine de Management, des Sciences Appliquées et de Télécommunications. La Formation pour l'Employabilité ! Depuis 2013 à Bamako, Missabougou.</p>
      <div class="hero-btns">
        <a href="admission.jsp" class="btn-gold">S'inscrire maintenant</a>
        <a href="formations.jsp" class="btn-blanc">Voir les formations</a>
      </div>
    </div>
    <div class="hero-right">
      <div class="terre"><img src="assets/img/logo-uamsat.png" alt="Terre dorée UAMSAT"></div>
      <img src="assets/img/photo-catalogue.jpg" alt="Étudiants UAMSAT">
    </div>
  </div>
</div>

<div class="wrap">
  <div class="section">
    <h2>Nos <span>Formations</span></h2>
    <p class="sous">DUT - Licence - Master. Choisis ton cycle, trouve ta filière.</p>
    <div class="filtres">
      <button class="actif" onclick="filtrer('tout',this)">Tout</button>
      <button onclick="filtrer('DUT',this)">DUT</button>
      <button onclick="filtrer('Licence',this)">Licence</button>
      <button onclick="filtrer('Master',this)">Master</button>
    </div>
    <div class="cartes" id="cartes">
      <div class="carte" data-cycle="DUT">
        <img src="assets/img/photo-couloir.jpg" alt="DUT Génie Logiciel">
        <h3>DUT - Génie Logiciel</h3>
        <p>Apprends à créer des applications, des sites web et des logiciels. 100% pratique.</p>
        <div class="prix">DUT 1 : 500 000 F - Inscription : 75 000 F</div>
        <a href="formations.jsp" class="lien">Voir la formation →</a>
      </div>
      <div class="carte" data-cycle="Licence">
        <img src="assets/img/photo-classe.jpg" alt="Licence Informatique de Gestion">
        <h3>Licence - Informatique de Gestion</h3>
        <p>Gestion + Informatique. Le profil le plus demandé par les entreprises au Mali.</p>
        <div class="prix">Licence 1 : 500 000 F - Inscription : 100 000 F</div>
        <a href="formations.jsp" class="lien">Voir la formation →</a>
      </div>
      <div class="carte" data-cycle="Licence">
        <img src="assets/img/photo-groupe.jpg" alt="Licence Télécommunications">
        <h3>Licence - Télécommunications et Réseaux</h3>
        <p>Réseaux, fibre, télécoms. Deviens technicien / ingénieur télécoms.</p>
        <div class="prix">Licence 1 : 600 000 F - Inscription : 100 000 F</div>
        <a href="formations.jsp" class="lien">Voir la formation →</a>
      </div>
      <div class="carte" data-cycle="Licence">
        <img src="assets/img/photo-classe.jpg" alt="Licence Management">
        <h3>Licence - Management des Entreprises</h3>
        <p>Apprends à gérer, diriger et créer ta propre entreprise.</p>
        <div class="prix">Licence 1 : 500 000 F - Inscription : 100 000 F</div>
        <a href="formations.jsp" class="lien">Voir la formation →</a>
      </div>
      <div class="carte" data-cycle="Master">
        <img src="assets/img/photo-groupe.jpg" alt="Master Management">
        <h3>Master - Management des Entreprises</h3>
        <p>Deviens manager, chef de projet, directeur. BAC+5 reconnu par le CAMES.</p>
        <div class="prix">Master 1 : 800 000 F - Inscription : 100 000 F</div>
        <a href="formations.jsp" class="lien">Voir la formation →</a>
      </div>
      <div class="carte" data-cycle="Master">
        <img src="assets/img/photo-couloir.jpg" alt="Master Data">
        <h3>Master - Data et Intelligence Artificielle</h3>
        <p>Data, IA, le métier du futur. Apprends avec des projets réels.</p>
        <div class="prix">Master 1 : 900 000 F - Inscription : 100 000 F</div>
        <a href="formations.jsp" class="lien">Voir la formation →</a>
      </div>
    </div>
  </div>

  <div class="transparente">
    <div>
      <h2>Une École au service du développement</h2>
      <p>UAMSAT, créée le 16 Janvier 2013 - Décision N° 2013-00039. Université privée, reconnue par l'État Malien et le CAMES. Notre mission : former des jeunes compétents, prêts pour l'emploi.</p>
      <a href="about.jsp" class="btn-gold" style="display:inline-block;margin-top:10px">Découvrir UAMSAT</a>
    </div>
  </div>

  <div class="quiz-cta">
    <h3>Tu ne sais pas quelle filière choisir ?</h3>
    <p>Fais le quiz en 1 minute. On te dit si tu es plutôt Télécoms ou Management.</p>
    <a href="quiz.jsp" class="btn-gold" style="display:inline-block">Faire le Quiz →</a>
  </div>

  <div class="section">
    <h2>Nos <span>Partenaires</span></h2>
    <p class="sous">5 partenaires qui nous font confiance.</p>
    <div class="partenaires">
      <img src="assets/img/partenaire-【entity-ubs¦canonical_name=UBS】.png" alt="【entity-UBS¦canonical_name=UBS】">
      <img src="assets/img/partenaire-aum.png" alt="AUM">
      <img src="assets/img/partenaire-ist.png" alt="IST - Institut Supérieur de Technologies">
      <img src="assets/img/partenaire-cames.png" alt="CAMES">
      <img src="assets/img/partenaire-technolab.png" alt="TechnoLAB-ISTA">
    </div>
  </div>
</div>

<footer>
  <h3>UAMSAT<span>.</span></h3>
  <div class="foot">
    <div><b>Université UAMSAT</b><br>Université Africaine de Management,<br>des Sciences Appliquées et de Télécommunications<br><br>Avenue du 3e Pont - Missabougou<br>Cité UNICEF face à la station SONEF</div>
    <div><b>Contact</b><br>+223 90 26 96 27<br>+223 65 32 32 42<br>infos@uamsat.com<br>www.uamsat.com</div>
    <div><b>Partenariats</b><br> 【entity-UBS¦canonical_name=UBS】 - AUM - IST<br>CAMES - TechnoLAB-ISTA</div>
  </div>
  <p class="foot-liens"><a href="index.jsp">Accueil</a> | <a href="about.jsp">A Propos</a> | <a href="formations.jsp">Formations</a> | <a href="admission.jsp">Admission</a> | <a href="contact.jsp">Contact</a></p>
  <p class="foot-bas">© 2026 UAMSAT - Une École au service du développement, agréée, reconnue par l'État Malien et le CAMES.</p>
</footer>

<script>
// MENU 3 BARRES
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
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
function filtrer(cycle, btn){
  document.querySelectorAll('.filtres button').forEach(function(b){ b.classList.remove('actif'); });
  btn.classList.add('actif');
  document.querySelectorAll('#cartes .carte').forEach(function(c){
    if(cycle === 'tout' || c.dataset.cycle === cycle){ c.style.display = 'block'; }
    else { c.style.display = 'none'; }
  });
}
</script>
</body>
</html>
