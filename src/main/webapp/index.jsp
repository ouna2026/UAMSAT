<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>UAMSAT - Universite Africaine de Management, des Sciences Appliquees et de Telecommunications</title>
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
</head>
<body>

<div class="bande-defilante">
  <div class="defile">
    <span>Admission 2026-2027 ouverte</span>
    <span>Bourse -30% pour les 50 premiers inscrits</span>
    <span>Inscription DUT : 75 000 F - Licence / Master : 100 000 F</span>
    <span>Avenue du 3e Pont - Missabougou, Bamako</span>
    <span>Tel : +223 90 26 96 27 - +223 65 32 32 42 - infos@uamsat.com</span>
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

  <!-- BOUTON 3 BARRES - TELEPHONE UNIQUEMENT -->
  <button class="menu-burger" id="menuBurger" aria-label="Menu">
    <span></span><span></span><span></span>
  </button>

  <div class="menu-liens" id="menuLiens">
    <a href="index.jsp">Accueil</a>
    <a href="about.jsp">A Propos</a>
    <a href="formations.jsp">Formations</a>
    <a href="admission.jsp">Admission</a>
    <a href="quiz.jsp">Quiz</a>
    <a href="contact.jsp">Contact</a>
    <a href="admission.jsp" class="btn-or">S'inscrire</a>
  </div>
</nav>

<div id="rideau">
  <img src="assets/img/logo-uamsat.png" alt="UAMSAT" width="110" height="110" style="width:110px;height:110px;object-fit:contain;">
  <div class="rideau-ligne"></div>
  <h1>UAMSAT</h1>
  <p class="rideau-univ">UNIVERSITE AFRICAINE DE MANAGEMENT,<br>DES SCIENCES APPLIQUEES ET DE TELECOMMUNICATIONS</p>
  <p class="rideau-slogan">Osez rever, realisez votre potentiel.</p>
  <div class="rideau-barre"><div class="rideau-remplissage"></div></div>
  <p class="rideau-bas">BAMAKO - MALI &nbsp;|&nbsp; DEPUIS 2013 &nbsp;|&nbsp; RECONNUE PAR L'ETAT ET LE CAMES</p>
</div>

<header class="hero">
  <div class="hero-gauche">
    <div class="badge"><i class="fa-solid fa-graduation-cap"></i> UNIVERSITE PRIVEE AGREEE - DEPUIS 2013</div>
    <h1>Osez rever,<br>realisez votre <span>potentiel !</span></h1>
    <p>Universite Africaine de Management, des Sciences Appliquees et de Telecommunications. La Formation pour l'Employabilite. Reconnue par l'Etat Malien et le CAMES.</p>
    <div class="btns">
      <a href="formations.jsp" class="btn1">Voir les formations <i class="fa-solid fa-arrow-right"></i></a>
      <a href="admission.jsp" class="btn2"><i class="fa-solid fa-pen-to-square"></i> S'inscrire maintenant</a>
    </div>
    <div class="hero-infos">
      <span><i class="fa-solid fa-location-dot"></i> Avenue du 3e Pont - Missabougou</span>
      <span><i class="fa-solid fa-phone"></i> +223 90 26 96 27</span>
      <span><i class="fa-solid fa-envelope"></i> infos@uamsat.com</span>
    </div>
  </div>
  <div class="hero-droite">
    <div class="photo-flottante photo-2">
      <img src="assets/img/photo-couloir.jpg" alt="Etudiantes polo rose clair" style="width:100%;height:200px;object-fit:cover;border-radius:12px;">
      <p>Vie etudiante - Polo rose clair</p>
    </div>
    <div class="photo-flottante photo-3">
      <img src="assets/img/photo-groupe.jpg" alt="Groupe UAMSAT" style="width:100%;height:180px;object-fit:cover;border-radius:12px;">
      <p>Nos diplomes</p>
    </div>
  </div>
</header>

<section class="stats">
  <div><i class="fa-solid fa-calendar-days"></i><b><span class="compteur" data-cible="12">0</span>+</b><span>Annees d'existence</span></div>
  <div><i class="fa-solid fa-book-open"></i><b><span class="compteur" data-cible="20">0</span>+</b><span>Filieres de formation</span></div>
  <div><i class="fa-solid fa-handshake"></i><b><span class="compteur" data-cible="5">0</span></b><span>Partenaires officiels</span></div>
  <div><i class="fa-solid fa-award"></i><b>CAMES</b><span>Reconnaissance officielle</span></div>
</section>

<section class="qui-sommes-nous">
  <div class="fond-transparent"></div>
  <div class="qui-contenu">
    <h2>Qui sommes-nous <span>?</span></h2>
    <p>L'Universite Africaine de Management, des Sciences Appliquees et de Telecommunications (UAMSAT) a ete creee le <b>16 Janvier 2013</b> par Decision N° 2013-00039/MESRS-SG.</p>
    <p>UAMSAT est agreee et reconnue par l'Etat Malien et le CAMES. Notre objectif est de former les leaders de demain par une pedagogie d'ouverture, la culture de l'excellence et l'innovation.</p>
    <div class="check">
      <div><i class="fa-solid fa-circle-check"></i> <b>Diplomes reconnus</b><br><span>Etat Malien + CAMES</span></div>
      <div><i class="fa-solid fa-circle-check"></i> <b>Certifications</b><br><span>HUAWEI ICT + 【entity-MICROSOFT¦canonical_name=MICROSOFT】</span></div>
      <div><i class="fa-solid fa-circle-check"></i> <b>Partenariat</b><br><span>TechnoLAB - ISTA</span></div>
      <div><i class="fa-solid fa-circle-check"></i> <b>International</b><br><span>Gabon, Burkina Faso, etc.</span></div>
    </div>
  </div>
  <div class="qui-photo">
    <img src="assets/img/photo-classe.jpg" alt="Etudiants en classe" style="width:100%;height:350px;object-fit:cover;border-radius:20px;">
  </div>
</section>

<section class="filieres">
  <h2>Nos cycles et filieres de formation</h2>
  <p class="sous">2 grandes familles : Sciences de Gestion et Sciences Techniques et Technologiques</p>
  <div class="filtres">
    <button class="actif" data-filtre="tout">Tout voir</button>
    <button data-filtre="licence">Licence</button>
    <button data-filtre="master">Master</button>
    <button data-filtre="dut">DUT</button>
  </div>
  <div class="grille" id="grille">
    <div class="carte carte-3d" data-cat="licence"><div class="haut c1"><i class="fa-solid fa-computer"></i> Informatique de Gestion</div><div class="bas"><span class="tag">LICENCE - BAC+3</span><p>Developpement, bases de donnees, gestion de projet.</p><div class="prix">500 000 F <span>/ an - DUT 1 / Licence 1 Gestion</span></div></div></div>
    <div class="carte carte-3d" data-cat="licence"><div class="haut c2"><i class="fa-solid fa-tower-broadcast"></i> Telecommunications et Reseaux</div><div class="bas"><span class="tag">LICENCE - BAC+3</span><p>Fibre optique, 5G, reseaux d'entreprise.</p><div class="prix">600 000 F <span>/ an - Technique</span></div></div></div>
    <div class="carte carte-3d" data-cat="master"><div class="haut c3"><i class="fa-solid fa-briefcase"></i> Management des Entreprises</div><div class="bas"><span class="tag">MASTER - BAC+5</span><p>Strategie, finance, leadership.</p><div class="prix">800 000 F <span>/ an - Master 1 Gestion</span></div></div></div>
    <div class="carte carte-3d" data-cat="master"><div class="haut c4"><i class="fa-solid fa-brain"></i> Data et Intelligence Artificielle</div><div class="bas"><span class="tag">MASTER - BAC+5</span><p>Data, IA, Python. La filiere de l'avenir.</p><div class="prix">900 000 F <span>/ an - Master Technique</span></div></div></div>
    <div class="carte carte-3d" data-cat="dut"><div class="haut c5"><i class="fa-solid fa-code"></i> Genie Logiciel</div><div class="bas"><span class="tag">DUT - BAC+2</span><p>En 2 ans tu sais coder.</p><div class="prix">600 000 F <span>/ an - DUT Technique</span></div></div></div>
    <div class="carte carte-3d" data-cat="dut"><div class="haut c6"><i class="fa-solid fa-calculator"></i> Comptabilite et Finance</div><div class="bas"><span class="tag">DUT - BAC+2</span><p>Compta, audit, gestion.</p><div class="prix">500 000 F <span>/ an - DUT Gestion</span></div></div></div>
  </div>
</section>

<section class="tarifs">
  <h2>Tarifs <span>annuels officiels</span></h2>
  <div class="table-tarifs">
    <table>
      <tr><th>Module de formation</th><th>Sciences de Gestion</th><th>Sciences Techniques</th></tr>
      <tr><td><b>DUT 1 / Licence 1</b></td><td>500 000 F</td><td>600 000 F</td></tr>
      <tr><td><b>DUT 2 / Licence 2</b></td><td>500 000 F</td><td>600 000 F</td></tr>
      <tr><td><b>Licence 3</b></td><td>700 000 F</td><td>800 000 F</td></tr>
      <tr><td><b>Master 1</b></td><td>800 000 F</td><td>900 000 F</td></tr>
      <tr><td><b>Master 2</b></td><td>800 000 F</td><td>900 000 F</td></tr>
    </table>
  </div>
  <p class="paiement-note">
    <i class="fa-solid fa-circle-info"></i> <b>Frais d'inscription :</b> DUT 75 000 F - Licence / Master 100 000 F (non remboursables)<br>
    <i class="fa-solid fa-credit-card"></i> <b>Modalites :</b> 40% avant demarrage des cours - 30% en Janvier - 30% en Avril<br>
    <i class="fa-solid fa-shirt"></i> Le paiement d'au moins 30% donne droit a 2 tenues (costumes)
  </p>
</section>

<section class="pourquoi">
  <h2>Pourquoi choisir <span>UAMSAT</span> ?</h2>
  <div class="avantages">
    <div><i class="fa-solid fa-award"></i><b>Diplome reconnu</b><br><span>Reconnu par le Ministere et le CAMES</span></div>
    <div><i class="fa-solid fa-briefcase"></i><b>Stage garanti</b><br><span>Entreprises partenaires a Bamako</span></div>
    <div><i class="fa-solid fa-chalkboard-user"></i><b>Profs professionnels</b><br><span>Ils travaillent dans des entreprises</span></div>
    <div><i class="fa-solid fa-globe"></i><b>Reseau Africain</b><br><span>Etudiants de plusieurs pays d'Afrique</span></div>
  </div>
</section>

<section class="partenaires">
  <h2>Nos partenariats</h2>
  <p class="sous">Ils nous font confiance pour former leurs futurs collaborateurs.</p>
  <div class="partenaires-pro">
    <div><img src="assets/img/logo-【entity-ubs¦canonical_name=UBS】.png" alt="【entity-UBS¦canonical_name=UBS】" style="width:140px;height:70px;object-fit:contain;"></div>
    <div><img src="assets/img/logo-aum.png" alt="AUM" style="width:140px;height:70px;object-fit:contain;"></div>
    <div><img src="assets/img/logo-ist.png" alt="IST" style="width:140px;height:70px;object-fit:contain;"></div>
    <div><img src="assets/img/logo-cames.png" alt="CAMES" style="width:140px;height:70px;object-fit:contain;"></div>
    <div><img src="assets/img/logo-technolab-ista.png" alt="TechnoLAB-ISTA" style="width:140px;height:70px;object-fit:contain;"></div>
  </div>
</section>

<footer>
  <h3>UAMSAT<span>.</span></h3>
  <div class="foot">
    <div><b>Universite UAMSAT</b><br>Universite Africaine de Management,<br>des Sciences Appliquees et de Telecommunications<br><br><i class="fa-solid fa-location-dot"></i> Avenue du 3e Pont - Missabougou<br>Cite UNICEF face a la station SONEF</div>
    <div><b>Contact</b><br><i class="fa-solid fa-phone"></i> +223 90 26 96 27<br><i class="fa-solid fa-phone"></i> +223 65 32 32 42<br><i class="fa-solid fa-envelope"></i> infos@uamsat.com<br><i class="fa-solid fa-globe"></i> www.uamsat.com</div>
    <div><b>Partenariats</b><br>【entity-UBS¦canonical_name=UBS】 - AUM - IST<br>CAMES - TechnoLAB-ISTA</div>
  </div>
  <p class="foot-liens">
    <a href="index.jsp">Accueil</a> | <a href="about.jsp">A Propos</a> | <a href="formations.jsp">Formations</a> | <a href="admission.jsp">Admission</a> | <a href="contact.jsp">Contact</a>
  </p>
  <p class="foot-bas">© 2026 UAMSAT - Une Ecole au service du developpement, agreee, reconnue par l'Etat Malien et le CAMES.</p>
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
