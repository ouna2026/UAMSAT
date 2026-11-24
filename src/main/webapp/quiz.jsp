<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quiz - UAMSAT</title>

<!-- Logo UAMSAT + Installation PWA -->
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
.menu{background:#fff;display:flex;justify-content:space-between;align-items:center;padding:12px 5%;box-shadow:0 4px 20px rgba(0,0,0,.08);position:sticky;top:0;z-index:100}
.logo{display:flex;align-items:center;gap:10px;font-weight:800;font-size:22px;color:#144A9A;white-space:nowrap}
.logo small{color:#C9A227}
.logo img{width:52px;height:52px;object-fit:contain}
.menu-liens{display:flex;align-items:center}
.menu-liens a{color:#1A1A1A;font-weight:600;font-size:14px;margin-left:20px;white-space:nowrap}
.menu-liens a.actif{color:#144A9A;border-bottom:3px solid #C9A227;padding-bottom:4px}
.btn-or{background:#C9A227!important;color:#fff!important;padding:10px 20px;border-radius:30px}
/* Bouton 3 barres - CACHE sur PC */
.menu-burger{display:none;width:42px;height:42px;background:#0A234B;border:none;border-radius:10px;cursor:pointer;flex-direction:column;align-items:center;justify-content:center;gap:6px;flex-shrink:0}
.menu-burger span{display:block;width:22px;height:3px;background:#fff;border-radius:3px;transition:.3s}
.menu-burger.ouvert span:nth-child(1){transform:translateY(9px) rotate(45deg)}
.menu-burger.ouvert span:nth-child(2){opacity:0}
.menu-burger.ouvert span:nth-child(3){transform:translateY(-9px) rotate(-45deg)}
.wrap{max-width:800px;margin:0 auto;padding:0 18px}
.hero{text-align:center;padding:45px 18px 20px}
.hero h1{font-family:'Playfair Display',serif;font-size:42px;color:#144A9A;line-height:1.15}
.hero h1 span{color:#C9A227}
.hero p{color:#64748B;margin-top:12px;line-height:1.6}
.choix{display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin:25px 0}
.choix button{padding:13px 24px;border-radius:30px;border:2px solid #144A9A;background:#fff;font-weight:700;cursor:pointer}
.choix button.actif{background:#144A9A;color:#fff}
.quiz-card{background:#fff;border-radius:20px;padding:28px;box-shadow:0 12px 30px rgba(0,0,0,.06);margin-bottom:30px}
.quiz-card h2{font-size:19px;color:#144A9A;margin-bottom:6px}
.quiz-card p{color:#64748B;font-size:14px;margin-bottom:16px}
.question{margin-bottom:20px;padding:16px;background:#F8FAFC;border-radius:14px;border:1px solid #E2E8F0}
.question b{display:block;margin-bottom:10px;font-size:15px;line-height:1.6}
.question label{display:block;background:#fff;border:1px solid #E2E8F0;border-radius:10px;padding:11px 12px;margin:6px 0;cursor:pointer;font-size:14px;line-height:1.5}
.question label:hover{border-color:#144A9A}
.question input{margin-right:8px}
.btn-valider{width:100%;background:#C9A227;color:#fff;border:none;padding:15px;border-radius:30px;font-size:16px;font-weight:800;cursor:pointer}
.resultat{display:none;text-align:center;background:#fff;border-radius:20px;padding:28px;box-shadow:0 12px 30px rgba(0,0,0,.06);margin-bottom:40px}
.resultat h2{font-size:28px;color:#144A9A}
.resultat p{color:#64748B;margin:10px 0 18px;line-height:1.7}
.btn-inscrire{display:inline-block;background:#25D366;color:#fff;padding:14px 26px;border-radius:30px;font-weight:800}
.btn-retry{display:inline-block;background:#144A9A;color:#fff;border:none;padding:13px 24px;border-radius:30px;font-weight:700;margin-top:12px;cursor:pointer}
footer{background:#0A234B;color:#CBD5E1;padding:35px 5% 18px;margin-top:20px}
footer h3{color:#fff}
.foot-liens{margin-top:14px;text-align:center}
.foot-liens a{color:#E2E8F0;font-size:13px;margin:0 6px}

/* ===== GRAND TELEPHONE 768px - MENU 3 BARRES A DROITE ===== */
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
  .hero{padding:30px 14px 14px}
  .hero h1{font-size:30px}
  .choix{flex-direction:column}
  .choix button{width:100%}
  .quiz-card{padding:20px 14px}
  .resultat{padding:20px 14px}
  .resultat h2{font-size:22px}
  .btn-inscrire{width:100%}
}

/* ===== PETIT TELEPHONE 480px ===== */
@media(max-width:480px){
  .logo{font-size:16px;gap:8px}
  .logo img{width:44px;height:44px}
  .hero h1{font-size:25px}
  .hero p{font-size:14px}
  .quiz-card h2{font-size:17px}
  .question{padding:12px}
  .question b{font-size:14px}
  .question label{font-size:13px;padding:10px}
  .btn-valider{font-size:14px;padding:13px}
}
</style>
</head>
<body>

<div class="topbar"><span>Quiz UAMSAT - Teste ton niveau</span><span>Tel : <b>+223 90 26 96 27</b></span></div>

<div class="menu">
  <div class="logo"><img src="assets/img/logo-uamsat.png" alt="Logo UAMSAT"><div>UAMSAT<small>.</small></div></div>

  <!-- 3 BARRES A DROITE -->
  <button class="menu-burger" id="menuBurger" aria-label="Menu"><span></span><span></span><span></span></button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp" class="actif">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</div>

<div class="wrap">
  <div class="hero">
    <h1>Quiz <span>UAMSAT</span></h1>
    <p>Choisis ton domaine : <b>Télécoms</b> ou <b>Management</b>.<br>Réponds aux 5 questions. Si tu as 5/5, tu débloques l'inscription !</p>
  </div>

  <div class="choix">
    <button id="btn-telecom" class="actif" onclick="changerQuiz('telecom')">Télécommunications</button>
    <button id="btn-management" onclick="changerQuiz('management')">Management</button>
  </div>

  <div class="quiz-card" id="quiz-box">
    <h2 id="quiz-titre">Quiz Télécommunications</h2>
    <p id="quiz-sous">5 questions - 1 bonne réponse par question</p>
    <div id="questions"></div>
    <button class="btn-valider" onclick="valider()">Voir mon résultat</button>
  </div>

  <div class="resultat" id="resultat">
    <h2 id="resultat-titre"></h2>
    <p id="resultat-texte"></p>
    <div id="resultat-btns"></div>
  </div>
</div>

<footer>
  <h3>UAMSAT<span style="color:#FFD700">.</span></h3>
  <p class="foot-liens"><a href="index.jsp">Accueil</a> | <a href="about.jsp">A Propos</a> | <a href="formations.jsp">Formations</a> | <a href="admission.jsp">Admission</a> | <a href="contact.jsp">Contact</a></p>
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
// PWA
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('sw.js');
  });
}

var quizData = {
  telecom: [
    {q:"Que veut dire 5G ?", options:["5ème Génération de réseau mobile","5 Gigas de mémoire","5 Grandes entreprises"], bonne:0},
    {q:"Quel câble utilise la lumière pour transporter Internet très vite ?", options:["Câble électrique","Fibre optique","Câble USB"], bonne:1},
    {q:"Que veut dire WIFI ?", options:["Réseau sans fil pour Internet","Télévision par câble","Antenne radio"], bonne:0},
    {q:"Quel appareil permet de connecter plusieurs ordinateurs en réseau ?", options:["Imprimante","Routeur / Switch","Clavier"], bonne:1},
    {q:"Que veut dire IP dans une adresse IP ?", options:["Internet Protocol","International Phone","Image Photo"], bonne:0}
  ],
  management: [
    {q:"Que fait un manager ?", options:["Il organise, motive et dirige une équipe","Il répare les ordinateurs","Il conduit les bus"], bonne:0},
    {q:"C'est quoi le marketing ?", options:["Comprendre et satisfaire les clients pour vendre","Faire des factures","Compter l'argent"], bonne:0},
    {q:"C'est quoi un budget ?", options:["Un plan qui prévoit les dépenses et les revenus","Un sac pour l'argent","Une réunion"], bonne:0},
    {q:"Un entrepreneur, c'est quoi ?", options:["Quelqu'un qui crée et gère sa propre entreprise","Quelqu'un qui travaille à la banque","Quelqu'un qui est professeur"], bonne:0},
    {q:"Pourquoi une entreprise fait de la publicité ?", options:["Pour se faire connaître et attirer des clients","Pour perdre de l'argent","Pour décorer"], bonne:0}
  ]
};
var quizActuel = 'telecom';
function afficherQuestions(){
  var box = document.getElementById('questions');
  box.innerHTML = '';
  document.getElementById('resultat').style.display = 'none';
  document.getElementById('quiz-titre').textContent = quizActuel === 'telecom' ? 'Quiz Télécommunications' : 'Quiz Management';
  quizData[quizActuel].forEach(function(item, i){
    var div = document.createElement('div');
    div.className = 'question';
    var html = '<b>' + (i+1) + '. ' + item.q + '</b>';
    item.options.forEach(function(opt, j){
      html += '<label><input type="radio" name="q'+i+'" value="'+j+'"> ' + opt + '</label>';
    });
    div.innerHTML = html;
    box.appendChild(div);
  });
}
function changerQuiz(type){
  quizActuel = type;
  document.getElementById('btn-telecom').classList.toggle('actif', type==='telecom');
  document.getElementById('btn-management').classList.toggle('actif', type==='management');
  afficherQuestions();
}
function valider(){
  var score = 0;
  var total = quizData[quizActuel].length;
  for(var i=0;i<total;i++){
    var coche = document.querySelector('input[name="q'+i+'"]:checked');
    if(coche && parseInt(coche.value) === quizData[quizActuel][i].bonne){ score++; }
  }
  var res = document.getElementById('resultat');
  var titre = document.getElementById('resultat-titre');
  var texte = document.getElementById('resultat-texte');
  var btns = document.getElementById('resultat-btns');
  res.style.display = 'block';
  window.scrollTo({top: res.offsetTop - 80, behavior:'smooth'});
  if(score === total){
    titre.textContent = 'Bravo ! 5/5 - Tu es un champion !';
    titre.style.color = '#16A34A';
    texte.innerHTML = 'Tu as tout réussi ! Tu as le niveau UAMSAT.<br><b>Inscris-toi à UAMSAT pour découvrir encore plus.</b>';
    btns.innerHTML = '<a href="admission.jsp" class="btn-inscrire">Inscris-toi à UAMSAT pour découvrir...</a>';
  } else {
    titre.textContent = 'Tu as ' + score + ' / 5';
    titre.style.color = '#144A9A';
    texte.innerHTML = 'Du courage, tu peux y arriver, recommence pour obtenir plus de points.<br>Entraîne-toi et retente ta chance !';
    btns.innerHTML = '<a href="admission.jsp" class="btn-inscrire">Découvrir les admissions UAMSAT</a><br><button class="btn-retry" onclick="afficherQuestions()">Recommencer le quiz</button>';
  }
}
afficherQuestions();
</script>
</body>
</html>
