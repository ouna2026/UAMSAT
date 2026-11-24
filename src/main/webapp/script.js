
document.querySelectorAll('.compteur').forEach(function(c){
    var cible = parseInt(c.dataset.cible, 10);
    var val = 0;
    var inter = setInterval(function(){
        val += Math.ceil(cible / 50);
        if(val >= cible){ val = cible; clearInterval(inter); }
        c.textContent = val;
    }, 40);
});


document.querySelectorAll('.filtres button').forEach(function(btn){
    btn.addEventListener('click', function(){
        document.querySelectorAll('.filtres button').forEach(function(b){
            b.classList.remove('actif');
        });
        btn.classList.add('actif');

        var filtre = btn.dataset.filtre;
        document.querySelectorAll('#grille .carte').forEach(function(card){
            if(filtre === 'tout' || card.dataset.cat === filtre){
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    });
});

setTimeout(function(){
    var rideau = document.getElementById('rideau');
    if(rideau){
        rideau.style.display = 'none';
    }
}, 3500);