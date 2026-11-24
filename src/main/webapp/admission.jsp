<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admission - UAMSAT</title>

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
.hero-right img{width:100%;max-width:430px;height:auto;border-radius:22px;display:block;margin-left:auto;box-shadow:0 20px 40px rgba(10,35,75,.25)}
.form-zone{display:grid;grid-template-columns:1.15fr 0.85fr;gap:25px;padding:30px 0 60px}
.form-card{background:#fff;border-radius:20px;padding:28px;box-shadow:0 12px 30px rgba(0,0,0,.06);min-width:0}
.form-card h2{font-family:'Playfair Display',serif;font-size:26px;color:#144A9A;margin-bottom:6px}
.form-card p{color:#64748B;font-size:14px;line-height:1.6;margin-bottom:18px}
label{display:block;font-size:13px;font-weight:700;color:#1E293B;margin:14px 0 6px}
input,select,textarea{width:100%;padding:13px 14px;border:2px solid #E2E8F0;border-radius:12px;font-size:14px;font-family:'Poppins',sans-serif;background:#F8FAFC;max-width:100%}
input:focus,select:focus,textarea:focus{outline:none;border-color:#144A9A;background:#fff}
.deux{display:grid;grid-template-columns:1fr 1fr;gap:14px}
.btn-submit{width:100%;margin-top:22px;background:#C9A227;color:#fff;border:none;padding:15px;border-radius:30px;font-size:16px;font-weight:800;cursor:pointer}
.btn-submit:hover{background:#A8861A}
.info-card{background:#0A234B;color:#fff;border-radius:20px;padding:28px;height:fit-content;min-width:0}
.info-card h3{font-size:19px;margin-bottom:14px}
.info-card h3 span{color:#FFD700}
.info-card p{font-size:14px;line-height:1.7;color:#E2E8F0;margin-bottom:12px}
.info-card .box{background:rgba(255,255,255,.12);border-radius:14px;padding:16px;margin:16px 0;font-size:14px;line-height:1.7}
.info-card .box b{color:#FFD700}
.paiement{background:#fff;color:#1A1A1A;border-radius:14px;padding:16px;margin-top:16px;font-size:14px;line-height:1.7}
.paiement b{color:#144A9A}
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
.form-zone{grid-template-columns:1fr}
.deux{grid-template-columns:1fr}
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
  .hero{padding:28px 14px}
  .hero-left h1{font-size:30px}
  .form-zone{padding:20px 0 40px;gap:18px}
  .form-card{padding:20px 14px}
  .info-card{padding:20px 14px}
  .foot{flex-direction:column;gap:16px}
}
@media(max-width:480px){
  .logo{font-size:16px;gap:8px}
  .logo img{width:44px;height:44px}
  .hero{padding:22px 12px}
  .hero-left h1{font-size:25px}
  .form-card h2{font-size:22px}
  .btn-submit{font-size:14px;padding:13px}
  .info-card h3{font-size:17px}
}
</style>
</head>
<body>

<div class="topbar"><span>Admission 2026-2027 ouverte</span><span>Tel : <b>+223 90 26 96 27</b> - infos@uamsat.com</span></div>

<div class="menu">
  <div class="logo"><img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT"><div>UAMSAT<small>.</small></div></div>
  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp" class="actif">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</div>

<div class="wrap">
  <div class="hero">
    <div class="hero-left">
      <span class="badge">ADMISSION 2026-2027</span>
      <h1>Inscris-toi à<br><span>UAMSAT maintenant.</span></h1>
      <p class="hero-sous">Remplis le formulaire en 2 minutes. On te rappelle pour valider ton dossier.</p>
      <p class="hero-desc">Bourse -30% pour les 50 premiers inscrits. Inscription DUT : 75 000 F - Licence / Master : 100 000 F.</p>
    </div>
    <div class="hero-right">
      <img src="assets/img/logo-photo.png" alt="Affiche UAMSAT">
    </div>
  </div>

  <div class="form-zone">
    <div class="form-card">
      <h2>Formulaire d'inscription</h2>
      <p>Tous les champs avec * sont obligatoires. Tes informations restent confidentielles.</p>
      <form action="confirmation.jsp" method="post" onsubmit="return verifierForm()">
        <div class="deux">
          <div><label>Nom *</label><input type="text" name="nom" id="nom" placeholder="Ex : Diarra" required></div>
          <div><label>Prénom *</label><input type="text" name="prenom" id="prenom" placeholder="Ex : Awa" required></div>
        </div>
        <div class="deux">
          <div><label>Téléphone *</label><input type="tel" name="telephone" id="telephone" placeholder="+223 70 00 00 00" required></div>
          <div><label>Email</label><input type="email" name="email" placeholder="ton@email.com"></div>
        </div>
        <label>Date de naissance *</label>
        <input type="date" name="naissance" required>
        <label>Cycle souhaité *</label>
        <select name="cycle" id="cycle" required onchange="changerFiliere()">
          <option value="">-- Choisis ton cycle --</option>
          <option value="DUT">DUT - BAC+2</option>
          <option value="Licence">Licence - BAC+3</option>
          <option value="Master">Master - BAC+5</option>
        </select>
        <label>Filière souhaitée *</label>
        <select name="filiere" id="filiere" required>
          <option value="">-- Choisis d'abord ton cycle --</option>
        </select>
        <label>Diplôme obtenu *</label>
        <select name="diplome" required>
          <option value="">-- Choisis --</option>
          <option>BAC</option>
          <option>DUT</option>
          <option>Licence</option>
          <option>Autre</option>
        </select>
        <label>Message (optionnel)</label>
        <textarea name="message" rows="3" placeholder="Dis-nous ce que tu veux étudier, tes questions..."></textarea>
        <button type="submit" class="btn-submit">Envoyer ma demande d'inscription</button>
        <p id="msg-erreur" style="color:#DC2626;font-weight:700;margin-top:12px;display:none;">Remplis bien ton nom, prénom et téléphone.</p>
      </form>
    </div>

    <div class="info-card">
      <h3>Pourquoi s'inscrire <span>maintenant ?</span></h3>
      <p><b>1.</b> Tu réserves ta place avant que les classes soient pleines.</p>
      <p><b>2.</b> Tu profites de la bourse -30% pour les 50 premiers.</p>
      <p><b>3.</b> Tu reçois tes 2 tenues (costumes) dès que tu paies 30%.</p>
      <div class="box">
        <b>Adresse :</b><br>
        Avenue du 3e Pont - Missabougou,<br>
        Cité UNICEF face à la station SONEF, Bamako - Mali<br><br>
        <b>Tél :</b> +223 90 26 96 27 / +223 65 32 32 42<br>
        <b>Email :</b> infos@uamsat.com
      </div>
      <div class="paiement">
        <b>Frais d'inscription :</b><br>
        DUT : 75 000 F - Licence / Master : 100 000 F<br><br>
        <b>Paiement :</b> 40% avant les cours - 30% en Janvier - 30% en Avril<br><br>
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

if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
var filieres = {
  "DUT": ["Génie Logiciel", "Comptabilité et Finance", "Télécommunications et Réseaux"],
  "Licence": ["Informatique de Gestion", "Télécommunications et Réseaux", "Management des Entreprises", "Comptabilité et Finance"],
  "Master": ["Management des Entreprises", "Data et Intelligence Artificielle", "Télécommunications et Réseaux"]
};
function changerFiliere(){
  var cycle = document.getElementById('cycle').value;
  var sel = document.getElementById('filiere');
  sel.innerHTML = '<option value="">-- Choisis ta filière --</option>';
  if(filieres[cycle]){
    filieres[cycle].forEach(function(f){
      var o = document.createElement('option');
      o.value = f; o.textContent = f;
      sel.appendChild(o);
    });
  }
}
function verifierForm(){
  var nom = document.getElementById('nom').value.trim();
  var prenom = document.getElementById('prenom').value.trim();
  var tel = document.getElementById('telephone').value.trim();
  if(nom === "" || prenom === "" || tel.length < 8){
    document.getElementById('msg-erreur').style.display = 'block';
    return false;
  }
  return true;
}
</script>
</body>
</html>
