<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%
  // 1. On essaie d'abord ce que le formulaire envoie direct (sans Servlet)
  String nom = request.getParameter("nom");
  String prenom = request.getParameter("prenom");
  String telephone = request.getParameter("telephone");
  String email = request.getParameter("email");
  String cycle = request.getParameter("cycle");
  String filiere = request.getParameter("filiere");
  String diplome = request.getParameter("diplome");
  String message = request.getParameter("message");

  // 2. Si c'est vide, on essaie la session (avec Servlet)
  if (nom == null || nom.equals("")) nom = (String) session.getAttribute("nom");
  if (prenom == null || prenom.equals("")) prenom = (String) session.getAttribute("prenom");
  if (telephone == null || telephone.equals("")) telephone = (String) session.getAttribute("telephone");
  if (email == null || email.equals("")) email = (String) session.getAttribute("email");
  if (cycle == null || cycle.equals("")) cycle = (String) session.getAttribute("cycle");
  if (filiere == null || filiere.equals("")) filiere = (String) session.getAttribute("filiere");
  if (diplome == null || diplome.equals("")) diplome = (String) session.getAttribute("diplome");
  if (message == null || message.equals("")) message = (String) session.getAttribute("message");

  if (nom == null) nom = "";
  if (prenom == null) prenom = "";
  if (telephone == null) telephone = "";
  if (email == null) email = "";
  if (cycle == null) cycle = "";
  if (filiere == null) filiere = "";
  if (diplome == null) diplome = "";
  if (message == null) message = "";

  String texteWhatsApp = "NOUVELLE INSCRIPTION UAMSAT\n\n"
    + "Nom : " + nom + "\n"
    + "Prenom : " + prenom + "\n"
    + "Telephone : " + telephone + "\n"
    + "Email : " + email + "\n"
    + "Cycle : " + cycle + "\n"
    + "Filiere : " + filiere + "\n"
    + "Diplome : " + diplome + "\n"
    + "Message : " + message;

  String lienWhatsApp = "https://wa.me/22364716909?text=" + URLEncoder.encode(texteWhatsApp, "UTF-8");
%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confirmation - UAMSAT</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Poppins',sans-serif}
body{background:#F2F6FC;color:#1A1A1A;overflow-x:hidden}
.topbar{background:#0A234B;color:#fff;font-size:13px;padding:9px 5%;display:flex;justify-content:space-between;flex-wrap:wrap}
.menu{background:#fff;display:flex;justify-content:space-between;align-items:center;padding:12px 5%;box-shadow:0 4px 20px rgba(0,0,0,.08);flex-wrap:wrap}
.logo{font-weight:800;font-size:22px;color:#144A9A}
.logo small{color:#C9A227}
.menu a{color:#1A1A1A;font-weight:600;font-size:14px;margin-left:20px;text-decoration:none}
.btn-or{background:#C9A227!important;color:#fff!important;padding:10px 20px;border-radius:30px}
.box{width:92%;max-width:700px;margin:35px auto;background:#fff;border-radius:20px;padding:30px;box-shadow:0 15px 35px rgba(0,0,0,.08);text-align:center;overflow:hidden}
.icone{width:75px;height:75px;background:#DCFCE7;color:#16A34A;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:32px;margin:0 auto 16px}
.box h1{font-size:27px;color:#144A9A;margin-bottom:10px;word-wrap:break-word}
.box p{color:#64748B;line-height:1.7;font-size:15px;word-wrap:break-word}
.recap{text-align:left;background:#F8FAFC;border-radius:14px;padding:18px;margin:22px 0;font-size:14px;line-height:2;word-wrap:break-word}
.recap b{color:#144A9A}
.btn-whatsapp{display:flex;align-items:center;justify-content:center;gap:10px;background:#25D366;color:#fff!important;padding:16px 18px;border-radius:30px;font-weight:800;font-size:15px;text-decoration:none;margin-top:18px}
.btns{display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin-top:16px}
.btns a{padding:13px 24px;border-radius:30px;font-weight:700;font-size:14px;text-decoration:none}
.b1{background:#C9A227;color:#fff}
.b2{border:2px solid #144A9A;color:#144A9A}
@media(max-width:600px){.box{width:94%;padding:22px 16px}.menu{flex-direction:column;gap:10px}.box h1{font-size:23px}}
</style>
</head>
<body>
<div class="topbar"><span>Admission 2026-2027</span><span>infos@uamsat.com</span></div>
<div class="menu">
  <div class="logo">UAMSAT<small>.</small></div>
  <div><a href="index.jsp">Accueil</a><a href="admission.jsp">Admission</a><a href="contact.jsp">Contact</a><a href="admission.jsp" class="btn-or">S'inscrire</a></div>
</div>

<div class="box">
  <div class="icone"><i class="fa-solid fa-check"></i></div>
  <h1>Merci <%= prenom %> <%= nom %> !</h1>
  <p>Ta demande d'inscription a bien été reçue.<br>On te rappelle au <b><%= telephone %></b> pour valider ton dossier.</p>

  <div class="recap">
    <b>Nom :</b> <%= nom %><br>
    <b>Prénom :</b> <%= prenom %><br>
    <b>Téléphone :</b> <%= telephone %><br>
    <b>Email :</b> <%= email %><br>
    <b>Cycle :</b> <%= cycle %><br>
    <b>Filière :</b> <%= filiere %><br>
    <b>Diplôme :</b> <%= diplome %><br>
    <b>Message :</b> <%= message %>
  </div>

  <a href="<%= lienWhatsApp %>" target="_blank" class="btn-whatsapp">
    <i class="fa-brands fa-whatsapp"></i> Envoyer sur WhatsApp +223 64 71 69 09
  </a>
  <p style="font-size:13px;color:#16A34A;font-weight:700;margin-top:10px;">Clique dessus, WhatsApp s'ouvre avec ton message déjà écrit.</p>

  <p style="margin-top:16px;"><b>Prochaine étape :</b> Viens à UAMSAT avec ton dossier - Avenue du 3e Pont, Missabougou.<br>Compte BDM : ML016 01207 020401383230 25</p>

  <div class="btns">
    <a href="index.jsp" class="b1">Retour à l'accueil</a>
    <a href="contact.jsp" class="b2">Nous contacter</a>
  </div>
</div>
</body>
</html>