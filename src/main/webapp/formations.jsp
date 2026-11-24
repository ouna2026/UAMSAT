<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Formations - UAMSAT</title>

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
.topbar{background:#0A234B;color:#fff;font-size:13px;font-weight:600;padding:9px 5%;display:flex;justify-content:space-between;gap:15px;flex-wrap:wrap}
.topbar b{color:#FFD700}
.menu{position:sticky;top:0;z-index:100;background:#fff;display:flex;justify-content:space-between;align-items:center;padding:12px 5%;box-shadow:0 4px 20px rgba(0,0,0,.08)}
.logo{display:flex;align-items:center;gap:12px;font-weight:800;font-size:22px;color:#144A9A;white-space:nowrap}
.logo small{color:#C9A227}
.logo img{width:52px;height:52px;object-fit:contain}
.menu-liens{display:flex;align-items:center;gap:22px;flex-wrap:wrap}
.menu-liens a{color:#1A1A1A;font-weight:600;font-size:14px;white-space:nowrap}
.menu-liens a.actif{color:#144A9A;border-bottom:3px solid #C9A227;padding-bottom:4px}
.btn-or{background:#C9A227!important;color:#fff!important;padding:10px 20px;border-radius:30px;font-weight:800}
.menu-burger{display:none;width:42px;height:42px;background:#0A234B;border:none;border-radius:10px;cursor:pointer;flex-direction:column;align-items:center;justify-content:center;gap:6px;flex-shrink:0}
.menu-burger span{display:block;width:22px;height:3px;background:#fff;border-radius:3px;transition:.3s}
.menu-burger.ouvert span:nth-child(1){transform:translateY(9px) rotate(45deg)}
.menu-burger.ouvert span:nth-child(2){opacity:0}
.menu-burger.ouvert span:nth-child(3){transform:translateY(-9px) rotate(-45deg)}
.wrap{max-width:1120px;margin:0 auto;padding:0 20px}
.hero{display:grid;grid-template-columns:1.05fr 0.95fr;gap:35px;align-items:center;background:#fff;padding:45px 20px 35px}
.hero-left h1{font-family:'Playfair Display',serif;font-size:46px;line-height:1.12;color:#144A9A;margin:16px 0 14px}
.hero-left h1 span{color:#C9A227}
.badge{display:inline-block;background:#C9A227;color:#fff;padding:8px 16px;border-radius:30px;font-size:12px;font-weight:700;letter-spacing:1px}
.hero-sous{font-size:16px;line-height:1.6;color:#1E293B;font-weight:600}
.hero-desc{font-size:15px;line-height:1.7;color:#64748B;margin-top:10px}
.hero-btns{display:flex;gap:12px;flex-wrap:wrap;margin-top:24px}
.hero-btns a{padding:13px 24px;border-radius:30px;font-weight:700;font-size:14px;text-align:center}
.b1{background:#C9A227;color:#fff}
.b2{border:2px solid #144A9A;color:#144A9A}
.hero-right img{width:100%;max-width:430px;height:auto;border-radius:22px;display:block;margin-left:auto;box-shadow:0 20px 40px rgba(10,35,75,.25)}
.filtres{display:flex;justify-content:center;gap:10px;flex-wrap:wrap;margin:35px 0 25px}
.filtres button{padding:11px 24px;border-radius:30px;border:2px solid #144A9A;background:#fff;font-weight:700;cursor:pointer;font-size:14px;white-space:nowrap}
.filtres button.actif{background:#144A9A;color:#fff}
.grille{display:grid;grid-template-columns:1fr 1fr 1fr;gap:18px;padding-bottom:10px}
.carte{background:#fff;border-radius:18px;overflow:hidden;box-shadow:0 12px 30px rgba(0,0,0,.08);min-width:0}
.carte .haut{height:130px;padding:20px;color:#fff;font-weight:800;font-size:18px;display:flex;align-items:flex-end}
.c1{background:linear-gradient(135deg,#0A234B,#1E5AA8)}.c2{background:linear-gradient(135deg,#FF8A00,#FFC947)}.c3{background:linear-gradient(135deg,#00C2FF,#0066FF)}.c4{background:linear-gradient(135deg,#7C3AED,#DB2777)}.c5{background:linear-gradient(135deg,#059669,#34D399)}.c6{background:linear-gradient(135deg,#0F172A,#475569)}
.carte .bas{padding:20px}
.tag{display:inline-block;background:#FEF3C7;color:#92400E;padding:5px 10px;border-radius:20px;font-size:11px;font-weight:700}
.carte .bas p{color:#64748B;font-size:14px;line-height:1.6;margin:8px 0}
.prix{margin-top:12px;font-weight:800;font-size:16px}
.prix span{font-size:12px;color:#64748B;font-weight:400}
.tarifs{margin:45px 0;background:#144A9A;color:#fff;border-radius:20px;padding:30px 20px}
.tarifs h2{text-align:center;font-family:'Playfair Display',serif;font-size:30px}
.tarifs h2 span{color:#FFD700}
.table-box{max-width:900px;margin:25px auto 0;background:#fff;color:#1A1A1A;border-radius:16px;overflow:hidden;overflow-x:auto}
.table-box table{width:100%;border-collapse:collapse;font-size:14px}
.table-box th{background:#0A234B;color:#fff;padding:14px;text-align:left;white-space:nowrap}
.table-box td{padding:14px;border-bottom:1px solid #E2E8F0}
.note{text-align:center;margin-top:16px;color:#E2E8F0;font-size:14px;line-height:1.7}
.fin{text-align:center;margin:45px 0 60px}
.fin h2{font-family:'Playfair Display',serif;color:#144A9A;font-size:27px;margin-bottom:18px}
.fin a{display:inline-block;background:#C9A227;color:#fff;padding:14px 28px;border-radius:30px;font-weight:800}
footer{background:#0A234B;color:#CBD5E1;padding:40px 5% 20px}
footer h3{color:#fff;font-size:24px}
footer h3 span{color:#FFD700}
.foot{display:flex;justify-content:space-between;gap:30px;flex-wrap:wrap;margin-top:18px;font-size:14px;line-height:2}
.foot b{color:#fff}
.foot-liens{margin-top:18px;text-align:center}
.foot-liens a{color:#E2E8F0;font-size:13px;margin:0 6px}
.foot-bas{text-align:center;margin-top:22px;font-size:12px;border-top:1px solid rgba(255,255,255,.15);padding-top:14px}
@media(max-width:850px){
.hero{grid-template-columns:1fr;padding:30px 16px}
.hero-left h1{font-size:34px}
.hero-right img{margin:0 auto}
.grille{grid-template-columns:1fr 1fr}
}
@media(max-width:768px){
  .topbar{justify-content:center;text-align:center;font-size:12px}
  .menu{padding:10px 14px;flex-wrap:nowrap!important}
  .logo{font-size:18px}
  .menu-burger{display:flex!important}
  .menu-liens{position:absolute!important;top:100%!important;left:0!important;right:0!important;width:100%!important;background:#fff!important;flex-direction:column!important;align-items:stretch!important;gap:0!important;padding:0 0 14px 0!important;box-shadow:0 15px 30px rgba(0,0,0,.15)!important;display:none!important;z-index:99}
  .menu-liens.ouvert{display:flex!important}
  .menu-liens a{margin:0!important;padding:14px 18px!important;border-bottom:1px solid #F1F5F9!important;font-size:15px!important}
  .menu-liens a.actif{border-bottom:1px solid #F1F5F9!important}
  .menu-liens a.btn-or{margin:12px 18px 0 18px!important;border-radius:30px!important;text-align:center!important;border:none!important}
  .hero{padding:30px 14px}
  .hero-left h1{font-size:30px}
  .filtres button{padding:9px 16px;font-size:13px}
  .grille{grid-template-columns:1fr 1fr}
  .tarifs{padding:25px 12px}
  .table-box table{min-width:560px;font-size:13px}
  .foot{flex-direction:column;gap:16px}
}
/* ===== PETIT TELEPHONE 480px ===== */
@media(max-width:480px){
  .logo{font-size:16px;gap:8px}
  .logo img{width:44px;height:44px}
  .hero{padding:24px 12px}
  .hero-left h1{font-size:25px}
  .hero-btns a{width:100%}
  .grille{grid-template-columns:1fr}
  .carte .haut{font-size:17px;height:115px}
  .tarifs h2{font-size:24px}
  .table-box table{min-width:520px;font-size:12px}
  .table-box th,.table-box td{padding:10px 8px}
  .fin h2{font-size:22px}
  .fin a{width:100%}
}
</style>
</head>
<body>

<div class="topbar"><span>Admission 2026-2027 ouverte</span><span>Tel : <b>+223 90 26 96 27</b> - infos@uamsat.com</span></div>

<div class="menu">
  <div class="logo"><img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT"><div>UAMSAT<small>.</small></div></div>

  <!-- 3 BARRES A DROITE -->
  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp">A Propos</a>
    <a href="formations.jsp" class="actif">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</div>

<div class="wrap">
  <div class="hero">
    <div class="hero-left">
      <span class="badge">NOS FORMATIONS</span>
      <h1>Choisis ta filière,<br><span>construis ton avenir.</span></h1>
      <p class="hero-sous">2 grandes familles : Sciences de Gestion et Sciences Techniques et Technologiques.</p>
      <p class="hero-desc">DUT en 2 ans, Licence en 3 ans, Master en 5 ans. Diplômes reconnus par l'État Malien et le CAMES.</p>
      <div class="hero-btns">
        <a href="#grille" class="b1">Voir les filières</a>
        <a href="admission.jsp" class="b2">S'inscrire maintenant</a>
      </div>
    </div>
    <div class="hero-right">
      <img src="assets/img/photo-classe.jpg" alt="Étudiants en classe">
    </div>
  </div>

  <div class="filtres">
    <button class="actif" onclick="filtrer('tout',this)">Tout voir</button>
    <button onclick="filtrer('licence',this)">Licence</button>
    <button onclick="filtrer('master',this)">Master</button>
    <button onclick="filtrer('dut',this)">DUT</button>
  </div>

  <div class="grille" id="grille">
    <div class="carte" data-cat="licence"><div class="haut c1"><span>Informatique de Gestion</span></div><div class="bas"><span class="tag">LICENCE - BAC+3</span><p>Développement, bases de données, gestion de projet.</p><div class="prix">500 000 F <span>/ an - Licence 1 Gestion</span></div></div></div>
    <div class="carte" data-cat="licence"><div class="haut c2"><span>Télécommunications et Réseaux</span></div><div class="bas"><span class="tag">LICENCE - BAC+3</span><p>Fibre optique, 5G, réseaux d'entreprise.</p><div class="prix">600 000 F <span>/ an - Technique</span></div></div></div>
    <div class="carte" data-cat="master"><div class="haut c3"><span>Management des Entreprises</span></div><div class="bas"><span class="tag">MASTER - BAC+5</span><p>Stratégie, finance, leadership.</p><div class="prix">800 000 F <span>/ an - Master 1 Gestion</span></div></div></div>
    <div class="carte" data-cat="master"><div class="haut c4"><span>Data et Intelligence Artificielle</span></div><div class="bas"><span class="tag">MASTER - BAC+5</span><p>Data, IA, Python. La filière de l'avenir.</p><div class="prix">900 000 F <span>/ an - Master Technique</span></div></div></div>
    <div class="carte" data-cat="dut"><div class="haut c5"><span>Génie Logiciel</span></div><div class="bas"><span class="tag">DUT - BAC+2</span><p>En 2 ans tu sais coder.</p><div class="prix">600 000 F <span>/ an - DUT Technique</span></div></div></div>
    <div class="carte" data-cat="dut"><div class="haut c6"><span>Comptabilité et Finance</span></div><div class="bas"><span class="tag">DUT - BAC+2</span><p>Compta, audit, gestion.</p><div class="prix">500 000 F <span>/ an - DUT Gestion</span></div></div></div>
  </div>

  <div class="tarifs">
    <h2>Tarifs <span>annuels officiels</span></h2>
    <div class="table-box">
      <table>
        <tr><th>Module de formation</th><th>Sciences de Gestion</th><th>Sciences Techniques</th></tr>
        <tr><td><b>DUT 1 / Licence 1</b></td><td>500 000 F</td><td>600 000 F</td></tr>
        <tr><td><b>DUT 2 / Licence 2</b></td><td>500 000 F</td><td>600 000 F</td></tr>
        <tr><td><b>Licence 3</b></td><td>700 000 F</td><td>800 000 F</td></tr>
        <tr><td><b>Master 1</b></td><td>800 000 F</td><td>900 000 F</td></tr>
        <tr><td><b>Master 2</b></td><td>800 000 F</td><td>900 000 F</td></tr>
      </table>
    </div>
    <p class="note"><b>Frais d'inscription :</b> DUT 75 000 F - Licence / Master 100 000 F (non remboursables)<br><b>Modalités :</b> 40% avant démarrage des cours - 30% en Janvier - 30% en Avril<br>Le paiement d'au moins 30% donne droit à 2 tenues (costumes)</p>
  </div>

  <div class="fin">
    <h2>Tu as trouvé ta filière ?</h2>
    <a href="admission.jsp">Je m'inscris à UAMSAT</a>
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

if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
function filtrer(cat, btn){
  document.querySelectorAll('.filtres button').forEach(function(b){b.classList.remove('actif')});
  btn.classList.add('actif');
  document.querySelectorAll('.carte').forEach(function(c){
    if(cat==='tout' || c.getAttribute('data-cat')===cat){c.style.display='block'} else {c.style.display='none'}
  });
}
</script>
</body>
</html>
