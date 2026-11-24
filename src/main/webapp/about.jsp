<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>À Propos - UAMSAT</title>

<!-- Logo UAMSAT + Installation PWA -->
<link rel="icon" type="image/png" href="assets/img/logo-uamsat.png">
<link rel="apple-touch-icon" href="assets/img/logo-uamsat.png">
<link rel="manifest" href="manifest.webmanifest">
<meta name="theme-color" content="#0A1F44">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="UAMSAT">

<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
.ab-wrap{max-width:1100px;margin:0 auto;padding:0 20px;background:#fff;overflow:hidden}
.ab-hero{display:grid;grid-template-columns:1.1fr 0.9fr;gap:35px;align-items:center;padding:45px 0 30px}
.ab-left{min-width:0}
.ab-badge{display:inline-block;background:#C9A227;color:#fff;padding:9px 18px;border-radius:30px;font-size:12px;font-weight:700;letter-spacing:1px}
.ab-left h1{font-family:'Playfair Display',serif;font-size:46px;line-height:1.15;color:#144A9A;margin:18px 0 14px}
.ab-left h1 span{color:#C9A227}
.ab-sous{font-size:16px;line-height:1.6;color:#1E293B;font-weight:600;margin-bottom:10px}
.ab-desc{font-size:15px;line-height:1.7;color:#64748B;margin-bottom:0}
.ab-btns{display:flex;gap:12px;flex-wrap:wrap;margin-top:24px}
.ab-btns a{display:inline-block;padding:13px 24px;border-radius:30px;font-weight:700;font-size:14px;text-decoration:none;text-align:center}
.ab-btns .b1{background:#C9A227;color:#fff}
.ab-btns .b2{border:2px solid #144A9A;color:#144A9A;background:#fff}
.ab-minis{display:flex;gap:28px;margin-top:28px;padding-top:20px;border-top:1px solid #E2E8F0;flex-wrap:wrap}
.ab-minis div{min-width:80px}
.ab-minis b{display:block;font-size:19px;color:#144A9A}
.ab-minis span{font-size:13px;color:#64748B}
.ab-right{min-width:0;position:relative;text-align:right}
.ab-right img{width:100%;max-width:420px;height:auto;border-radius:22px;display:block;margin-left:auto;box-shadow:0 20px 40px rgba(10,35,75,.25)}
.ab-float{position:absolute;left:20px;bottom:20px;background:#fff;padding:12px 16px;border-radius:12px;box-shadow:0 12px 25px rgba(0,0,0,.2);text-align:left}
.ab-float b{display:block;color:#144A9A;font-size:16px}
.ab-float span{color:#64748B;font-size:13px}
.ab-content{max-width:900px;margin:0 auto;padding:20px 0 60px}
.ab-content h2{font-family:'Playfair Display',serif;font-size:28px;color:#144A9A;margin:35px 0 14px}
.ab-content p{color:#334155;font-size:16px;line-height:1.85;margin:0 0 13px}
.ab-cards{display:grid;grid-template-columns:1fr 1fr 1fr;gap:15px;margin:30px 0}
.ab-cards div{background:#F8FAFC;border:1px solid #E2E8F0;border-radius:14px;padding:20px}
.ab-cards i{color:#C9A227;font-size:20px;display:block;margin-bottom:8px}
.ab-cards b{color:#144A9A}
.ab-cards p{font-size:14px;line-height:1.6;color:#64748B;margin-top:6px}
.ab-infos{background:#F2F6FC;border-radius:16px;padding:24px;margin-top:30px}
.ab-infos p{font-size:15px;border-bottom:1px solid #E2E8F0;padding-bottom:10px;word-wrap:break-word}
.ab-fin{text-align:center;margin-top:40px}
.ab-fin h2{font-family:'Playfair Display',serif;color:#144A9A;font-size:26px;margin-bottom:18px}
.ab-fin a{display:inline-block;background:#C9A227;color:#fff;padding:14px 28px;border-radius:30px;font-weight:800;text-decoration:none}
@media(max-width:850px){
  .ab-hero{grid-template-columns:1fr;padding:30px 0}
  .ab-left h1{font-size:33px}
  .ab-right{text-align:center}
  .ab-right img{margin:0 auto}
  .ab-cards{grid-template-columns:1fr}
  .ab-float{left:50%;transform:translateX(-50%);white-space:nowrap}
}
@media(max-width:480px){
  .ab-wrap{padding:0 14px}
  .ab-left h1{font-size:26px}
  .ab-sous{font-size:14px}
  .ab-desc{font-size:14px}
  .ab-btns a{width:100%}
  .ab-minis{gap:16px}
  .ab-float{white-space:normal;width:85%;text-align:center}
  .ab-content h2{font-size:22px}
  .ab-content p{font-size:14px}
  .ab-infos{padding:18px 14px}
  .ab-fin h2{font-size:22px}
  .ab-fin a{width:100%}
}
</style>
</head>
<body>

<div class="bande-defilante">
  <div class="defile">
    <span>Admission 2026-2027 ouverte</span>
    <span>Tel : +223 90 26 96 27 - infos@uamsat.com</span>
  </div>
</div>

<nav>
  <div class="logo">
    <div class="logo-bloc">
      <img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT" width="52" height="52" style="width:52px;height:52px;object-fit:contain;">
      <i class="fa-solid fa-globe logo-terre-tourne"></i>
    </div>
    <div>UAMSAT<span>.</span></div>
  </div>

  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp" class="lien-actif">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</nav>

<div class="ab-wrap">
  <div class="ab-hero">
    <div class="ab-left">
      <span class="ab-badge">QUI SOMMES-NOUS ?</span>
      <h1>Une Université<br><span>innovante !</span></h1>
      <p class="ab-sous">Université Africaine de Management, des Sciences Appliquées et de Télécommunications.</p>
      <p class="ab-desc">La Formation pour l'Employabilité ! Une université ouverte sur l'international, réputée par la qualité de ses enseignements.</p>
      <div class="ab-btns">
        <a href="formations.jsp" class="b1">Découvrir nos formations</a>
        <a href="admission.jsp" class="b2">S'inscrire maintenant</a>
      </div>
      <div class="ab-minis">
        <div><b>2013</b><br><span>Création</span></div>
        <div><b>CAMES</b><br><span>Reconnue</span></div>
        <div><b>2018</b><br><span>Innovation</span></div>
      </div>
    </div>
    <div class="ab-right">
      <img src="assets/img/a.png" alt="Affiche UAMSAT">
      <div class="ab-float"><b>Osez rêver,</b><span>réalisez votre potentiel !</span></div>
    </div>
  </div>

  <div class="ab-content">
    <h2>Qui sommes-nous ?</h2>
    <p>L'Université Africaine de Management, des Sciences Appliquées et de Télécommunications (UAMSAT) a été créée le <b>16 Janvier 2013</b> par <b>Décision N° 2013-00039 / MESRS-SG</b> (Ministère de l'Enseignement Supérieur et de la Recherche Scientifique).</p>
    <p>UAMSAT est <b>agréée et reconnue par l'État Malien et le CAMES</b>.</p>
    <p>En <b>2018</b>, avec une nouvelle réorientation de sa politique, l'UAMSAT s'est tournée vers <b>l'innovation</b> avec le renforcement des connaissances, des capacités et des compétences de demain en les inculquant <b>la culture de l'excellence</b>.</p>
    <p>Notre Objectif est de <b>former les leaders de demain</b>. Nous visons à consolider le positionnement de l'université dans l'écosystème éducatif et au cœur de la coopération scientifique régionale et internationale.</p>

    <h2>Une Université innovante !</h2>
    <p>UAMSAT est une université <b>ouverte sur l'international</b>, reconnue par l'État Malien et le CAMES (Conseil Africain et Malgache pour l'Enseignement Supérieur).</p>
    <p>UAMSAT est <b>réputée par la qualité de ses enseignements</b> et pour <b>l'employabilité de ses diplômés</b>.</p>
    <p>Ici, nous accompagnons les étudiants dans leurs domaines de spécialisation en leur inculquant les connaissances et compétences nécessaires pour <b>la compétitivité et l'insertion professionnelle</b>.</p>

    <div class="ab-cards">
      <div><i class="fa-solid fa-award"></i><b>Diplôme reconnu</b><p>Reconnu par l'État Malien et le CAMES.</p></div>
      <div><i class="fa-solid fa-globe"></i><b>Ouverte sur l'international</b><p>Coopération scientifique régionale et internationale.</p></div>
      <div><i class="fa-solid fa-briefcase"></i><b>Employabilité</b><p>La Formation pour l'Employabilité.</p></div>
    </div>

    <div class="ab-infos">
      <h2>Informations officielles</h2>
      <p><b>Nom complet :</b> Université Africaine de Management, des Sciences Appliquées et de Télécommunications - UAMSAT</p>
      <p><b>Date de création :</b> 16 Janvier 2013 - Décision N° 2013-00039 / MESRS-SG</p>
      <p><b>Reconnaissance :</b> Agréée et reconnue par l'État Malien et le CAMES</p>
      <p><b>Adresse :</b> Avenue du 3e Pont - Missabougou, Cité UNICEF face à la station SONEF, Bamako - Mali</p>
      <p><b>Téléphones :</b> +223 90 26 96 27 / +223 65 32 32 42</p>
      <p><b>Email :</b> infos@uamsat.com</p>
      <p><b>Site web :</b> www.uamsat.com</p>
      <p><b>Slogan :</b> Osez rêver, réalisez votre potentiel !</p>
    </div>

    <div class="ab-fin">
      <h2>Osez rêver, réalisez votre potentiel !</h2>
      <a href="admission.jsp">Je m'inscris à UAMSAT</a>
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
  <p class="foot-liens">
    <a href="index.jsp">Accueil</a> | <a href="about.jsp">A Propos</a> | <a href="formations.jsp">Formations</a> | <a href="admission.jsp">Admission</a> | <a href="contact.jsp">Contact</a>
  </p>
  <p class="foot-bas">© 2026 UAMSAT - Une École au service du développement, agréée, reconnue par l'État Malien et le CAMES.</p>
</footer>

<script src="script.js"></script>
<script>
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}
</script>
</body>
</html>
