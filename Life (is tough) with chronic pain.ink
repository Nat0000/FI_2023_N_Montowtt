VAR Douleur = 0
VAR bouteilleEau = 0
VAR casqueMusique = 0
VAR ecouteurDansOreille = 0
VAR painChoco = 0


//dès le début l'écran sera en "dark mode" 

//améliorations possibles:
//Je voulais faire changer la couleur de fond entre le noir et le blanc pour qu'il corresponde à la luminosité dans la fiction 
//Je voulais aussi ajouter du bruit dans les endroits bruyants de la fiction + un bruit de fond d'acouphènes 
//Quelques testeur.euse.s m'ont aussi fait la remarque que des couleurs différentes seraient utiles dans les dialogues/descriptions pour une compréhension plus facile


Bienvenue dans "Life (is tough) with chronic pain", la fiction interactive où vous vous retrouvez dans la peau d'une personne avec des maux de tête chroniques! Faites de votre mieux pour que le mal de tête ne prenne pas le dessus sur votre journée. Bonne chance !
*[Commencer cette magnifique journée.]

//à la base je voulais donner le choix au joueur.euse quelle douleur iel voulait combattre (ça s'est avéré un peu trop compliqué avec mes capacités), les 3 choix ressembleraient à ceci:
//*Jour 1 - Céphalée de tension
//*Jour 2 - Migraine
//*Ne pas avoir mal à la tête
//**[Mes félicitations! Tu as évité le mal de tête!]
//Non mais sérieusement, tu as vraiment cru que ça dépend de toi? Ne t'inquiète pas, je vais choisir pour toi et ton job sera d'essayer de deviner quel mal de tête te hante :) 

-
[Vous entendez une voix qui essaye de briser votre sommeil.]
...
...lève toi.
...-lez debout!
...mais tu vas te lever ou bien?
**[Se réveiller en restant dans le lit] -> chemin1
**[Sortir directement du lit.] ->chemin2
**[Vous tendez votre bras pour attrapper votre smartphone que vous allez utiliser "juste quelques minutes" dans votre lit.] ->chemin3

//seul chemin si on se rendort - le plus court 
===chemin1=== 
[Vous ouvrez les yeux, vous vous trouvez dans votre lit]
Je sais que je t'ai tenu un peu la jambe hier soir, donc tu as pas eu le meilleur sommeil de ta vie, mais j'ose croire que t'aimerais quand même être à l'heure pour tes cours, je me trompe? 
Ah oui, je suis sûr que tu es aussi très content de ma présence hein? Ou bien tu espérais que le sommeil me fasse partir? Bon, je te laisse retenter le coup si tu veux!
    ***[Hmmm... je préfère me lever finalement.] -> chemin2
    ***[Je me rendors.]
        [Tu trouves le mal de tête déjà peu supportable, alors tu décides de te rendormir.]
        D'accord je vois, merci de me tourner le dos. Je te garantis rien puique je peux très bien attendre... de toute façon tu te débarrasseras pas de moi aussi facilement.
        [Avec un peu de difficulté, vous vous rendormez.]
            ****[Me réveiller à nouveau]
            [Vous rouvrez les yeux après plusieurs heures.]
            Dis donc, je sais pas toi mais j'avoue que ce petit surplus de sommeil m'a bien énergisé! Là je suis bien prêt à te peser sur le crâne pour le restant de cette magnifique journée. Héhé je t'avais bien prévenu que je n'irai nulle part, par contre je pensais vraiment pas que tu allais tomber dans mon piège aussi facilement~ Tu sais très bien que j'adore un bon sommeil irrégulier, non? Même si j'avoue que c'est un peu dommage que tu sois en retard pour tes cours hein... Je compatis.
                *****[Le mal de tête a utilisé la ruse et a gagné trop de puissance (+100): vous vous rendez.]
                [Vous sentez que ta tête est encore plus lourde qu'au matin. Vous vous résignez à laisser tomber vos cours et vous restez au lit le reste de la journée. Vous vous rendormez en espérant que demain vous ferez mieux...]
                Mauvaise fin.
            ->END
//première fin - se rendort 


//premier chemin où on se lève de suite           
===chemin2===
[Vous vous levez]
Aaaah, ça me fait du bien de pouvoir m'étirer les jambes à moi aussi! Oh, mais on dirait que quelqu'un a la tête qui tourne un peu?
[Le mal de tête commence à vous chatouiller un peu et gagne +10 en puissance.]
// douleur = 10
~Douleur +=10
Bon arrête de dramatiser, je sais que tu peux prendre ton temps mais il faut bien que tu te prépares pour tes cours. *Long soupir* Vraiment, j'ai l'impression d'être ta mère parfois... Allez, je suis curieux de voir ce que vas-tu prendre avec toi pour me combattre le long de cette (longue) journée! Voyons voir...
    
    Tu as assez de place dans ton sac pour choisir 4 objets, choisis entre: 
    * [1. Bouteille d'eau, Lunettes de soleil, Anti-douleur, Agenda] -> chemin2_moyen
    * [2. Casque de musique, Bouteille d'eau, Petit snack, Anti-douleur] -> chemin2_bien
    * [3. Agenda, Stylo, Chargeur, Ecouteurs] -> chemin2_horrible
    
    ===chemin2_moyen===
        //Douleur de départ: 10
            [Vous glissez votre bouteille d'eau à moitié remplie dans votre sac, vous rangez aussi vos lunettes hyper classe dans une petite poche de votre sac pour y accéder facilement en cas de besoin. Ensuite vous trouvez quelques pillules dans la salle de bain et vous retrouvez votre agenda sur votre bureau, sous la pile de livres que vous êtes censé lire pour la semaine prochaine...] 
                ~bouteilleEau += 1
            Bon, je vais pas faire de commentaires sur ton choix pour ne pas te spoiler la suite de ta journée... Oh mais regarde l'heure, le bus va bientôt arriver! Veux-tu faire encore quelque chose avant de sortir?
                **[Mettre les lunettes de soleil]
                    //douleur = 9
                    ~Douleur -= 1
                    Je dis ça je dis rien, mais je trouve que tu vas avoir l'air ridicule avec ça dans le bus... Je n'aime vraiment pas ta tête dans ces lunettes >:(
                        [Le mal de tête est déçu de ne pas profiter de la lumière qui agresse vos yeux, il perd -1 en puissance.] -> mis_lunettes
                **[Juste sortir]
                    ~Douleur +=10
                    //Douleur 20
                    Ce n'est pas très malin de ta part de ne pas profiter de ton "équipement", tu ne trouves pas? Hahaha, ce qui est sûr c'est que ce n'est pas moi qui vais m'en plaindre! Je vais pouvoir bien profiter de cette journée :)
                    -> juste_sorti
                **[Prendre l'anti-douleur]
                    Hm, si j'étais toi je ne prendrais pas cette pilulle aussi vite... 
                    ~bouteilleEau -= 1
                    {shuffle:
                        --> anti_douleur_bien
                        --> anti_douleur_mal 
                        }
                        ===anti_douleur_bien===
                            ~Douleur -=5
                            //Douleur = 4
                            //eau à 0
                            [Bien joué, vous avez pris l'anti-douleur au moment parfait, il affaiblit le mal de tête de -5! Par contre vous n'avez plus d'eau dans votre bouteille.] -> anti_douleur_pris_bien
                            
                        ===anti_douleur_mal===
                            ~Douleur +=5
                            // Douleur = 14
                            //eau à 0
                            [Oh non! Vous prennez trop souvent des médicaments! Vous venez de renforcer le mal de tête de +5... Aussi, il ne vous reste plus d'eau :/] 
                            -> anti_douleur_pris_mal
                
        
        ===mis_lunettes===  
        Je ne pensais vraiment pas que tu allais mettre ces trucs alors qu'il y a peine un rayon de soleil... mais bon. Au moins je pourrai mieux profiter du vacarme dans le bus! Ah j'ai hâte d'entendre tous les potins de dizaines de personnes à la fois, et ça, tu pourras pas m'en priver! 
            [Vous n'avez pas pris d'écouteurs pour bloquer les bruits insupportables des autres passagers. Lorsque vous montez dans le bus, vos yeux sont tranquilles mais vos oreilles en souffrent: le mal de tête gagne +10 en puissance.]
            ~Douleur += 10
            //douleur = 19
            -> suite_chemin_moyen
        ===anti_douleur_pris_bien===
        {Douleur < 20 : Tu as l'air satisfait de toi, hein? Je me sens pas hyper bien mais ça veut pas dire que je vais pas lâcher prise. Au moins je peux recharger mes batteries avec le vacarme dans le bus! Ah j'ai hâte d'entendre tous les potins de dizaines de personnes à la fois, et ça, tu pourras pas m'en priver! [Vous n'avez pas pris d'écouteurs pour bloquer les bruits insupportables des autres passagers. Lorsque vous entrez dans le bus, les voix vous envahissent: le mal de tête gagne +10 en puissance.]}
            ~Douleur += 10
            //douleur = 14
            -> suite_chemin_moyen  
        ===anti_douleur_pris_mal===
        {Douleur > 14 : Eh bien merci pour cette petite vitamine! En plus tu n'as pas pensé à prendre tes écouteurs non? Aaah cette journée s'annonce si bien :) [Vous n'avez pas pris d'écouteurs pour bloquer les bruits insupportables des autres passagers. Lorsque vous entrez dans le bus, les voix vous envahissent: le mal de tête gagne +10 en puissance.] }
            ~Douleur += 10
            //douleur = 24
            -> suite_chemin_moyen
        ===juste_sorti===
            {~ [Dès que vous sortez, le peu de soleil qu'il y a vous agresse les yeux, alors sur le chemin vous décidez de rentrer chez vous.] |[Le soleil aggrave votre mal de tête, mais vous arrivez à atteindre le bus. Malheureusement, les bruits sont trop insupportables et vous finissez par abandonner et vous décidez de rentrer.] }
            {Douleur ==20 : [Tu n'as rien fait pour stopper le mal de tête, il gagne +10 en puissance. Vous n'avez pas réussi à le surmonter cette fois-ci, essayez peut-être de faire des "meilleurs" choix?]}
            Mauvaise fin.
                -> END
                //2e fin

===suite_chemin_moyen===
    Tout le monde avait beaucoup d'énergie à revendre ce matin tu ne trouves pas? Surtout ce bébé qui a pleuré tout le chemin, quelle douce mélodie pour mes oreilles! Alors, va-t-on directement dans ta salle de cours? -> les_chemins
    ===les_chemins===
        ***[Aller aux toilettes.]
            Aw mon pauvre chou, tu crois qu'un petit moment de tranquilité va me faire du mal? C'est vraiment mignon d'essayer ce genre de stratégie pathétique :) [Vous vous réfugiez un moment dans une cabine mais malheureusement ce n'est pas effectif...]
            ~Douleur -= 2
            {Douleur > 2 : [Malgré son attitude, le mal de tête perd un peu de sa puissance (-2), c'était une plutôt bonne idée de se réfugier un moment aux toilettes!] -> les_chemins}
        ***[Aller dans la salle de cours.]
            Super! Nous aurons plein de temps pour écouter les autres étudiants qui sont déjà arrivés et rester enfermé dans une salle sans air frais. Ah oui, par défaut tu seras aussi en avance pour ton cours. 
            ~ Douleur += 20
            {Douleur > 2: [Vous sentez que vous allez souffrir :/ ] -> SalleDeCours}
        ***[Aller à la cafétéria pour chercher de l'eau.]
            Roh non tu es sûr que tu veux boire de l'eau? N'oublie pas que ton cours va durer 2h sans pause, donc pas de toilettes...
                ****[Je veux toujours y aller.]
                    ~Douleur -= 5
                    ~bouteilleEau +=1 
                    //eau à > 1
                    {Douleur > 2: [Très bon choix, peut-être que votre vessie va en souffir mais le mal de tête a aussi perdu -5 en puissance! Votre bouteille est remplie.]} 
                    -> les_chemins
                ****[Il a raison, je préfère ne pas boire.]
                    ~Douleur += 20
                    //eau reste à 0
                    {Douleur >2: Hahaha tu es tombé dans mon piège! Ta déshydratation et l'une de mes meilleures armes >:) Courage pour la suite de ta journée sans une goutte d'eau~ [le mal de tête gagne +20 en puissance]-> les_chemins}
        ***[Rester dehors jusqu'à l'heure du cours.]
            T'espères te rattraper un peu avec de l'air "frais"? Bonne chance à trouver un endroit où il n'y a personne qui fume :) car tu sais à quel point j'adore la fumée, n'est-ce pas?
                {shuffle:
                    --> rencontreFumeurs
                    --> fumeursEvites
                }
                ===fumeursEvites===
                [Vous trouvez un endroit sans fumeur! L'air frais vous fait du bien et le mal de tête perd -5 en puissance.] -> les_chemins
                ~Douleur -= 5
                
                ===rencontreFumeurs===
                [Un groupe de personnes sort pour fumer juste à côté de là où vous êtes assis, pas de chance! Le mal de tête gagne +5 en puissance.] -> les_chemins
                ~Douleur += 5
            
            ===SalleDeCours===
            Ah oui! J'avais oublié que les lumières étaient aussi blanches! Il faut avouer que les techniciens de l'uni ont quand même un très bon goût. 
            ~Douleur += 50
            *****[Le cours commence.]
            [Le mal de tête gagne +50 en puissance. Vous tentez tout de même de rester concentré, mais tout du long vous ressentez que votre tête devient de plus en plus pesante. La voix de votre professeure retentit contre les parois de votre crâne. Vous commencez à voir un peu flou, ayant du mal à distinguer les mots sur les slides du cours. Les dizaines de clavier qui résonnent à travers la salle créent un orchestre insupportable. Vous avez envie d'éclater votre tête au sol ou tout simplement quitter la salle en courant. Mais vous ne pouvez pas. Et les gens autour ne savent restent ignorants de tout cela, vous devez être fort et continuer le cours. Car au final, c'est vous qui vous retrouverez devant votre feuille d'examen, alors il faut bien que vous sachiez quelque chose.]
                ******[Je vais serrer mes dents et rester pour le reste de mes cours.]
                    Selon moi ce n'est pas la meilleure idée, tu ne vois pas comment je mène la danse? Mais bon, je sens que tu tiendras pas longtemps de toute façon~ Tout ce que tu pourrais essayer de faire maintenant c'est peut-être boire de l'eau, mais est-ce que t'en as...? -> EauOuPas
                ******[Je n'en peux plus, je veux rentrer.]
                    Alors comme ça je gagne une fois de plus? Ah mais ne t'en veux pas, on sait très bien que je suis trop puissant pour ton corps de mortel! Mes félicitations cependant, tu as pas trop mal tenu le coup aujourd'hui... Bon je te laisse rentrer et à demain comme d'hab!
                    Mauvaise fin.
                        -> END
                        //3e fin
                        ===EauOuPas===
                            *******[Boire de l'eau]
                                {bouteilleEau >= 1: ->finAvecEau}<>
                                ~Douleur -= 5
                                {bouteilleEau <= 0: [Vous n'avez pas d'eau pour combattre le mal de tête :/ Courage, le mal de tête gagne +20 en puissance avec le temps... ->finEnCours}<>
                                ~Douleur += 20
                            *******[Ne pas boire.]
                                J'espère que tu sais que tu vas le regretter... 
                                -> finEnCours
                                ===finEnCours===
                                    Vous continuez votre journée de cours avec beaucoup de peine. A vrai dire, pour certaines périodes ça revient au même que si vous n'y étiez pas allé... Finalement vous arrivez à la fin de cette journée éprouvante pour vous retrouver chez vous après un trajet de retour épouventable. Vous n'avez plus de force pour faire quoique ce soit ni parler avec qui que ce soit. Vous vous enfermez dans votre chambre, en espérant que vous arriverez à retrouver sommeil plus facilement que la nuit précédente. Oui vous avez "réalisé" vos obligations de la journée, mais ceci n'est pas réellement une victoire. Ceci n'était qu'une journée comme les autres, au final vous regrettez d'avoir continué cette aventure la tête baissée. Vous espèrez juste que demain ça ira peut-être mieux, même si votre espoir est très fin. Le mal de tête a gagné une fois encore.]
                                    Mauvaise fin.
                                        -> END
                                        //4e fin
                                ===finAvecEau===
                                    [Heureusement vous avez rempli votre bouteille! Vous buvez de l'eau durant les cours, cela vous aide un tout petit peu et le mal de tête perd -5 en puissance. Vous galérez tout de même toute la journée durant (et vous passez pas mal de temps aux toilettes aussi). Vous regrettez un peu de ne pas être rentré, en même temps ça aurait pu être pire. Cependant vous savez que demain ce sera la même histoire... cela vous désespère fortement...]
                                    Mauvaise fin.
                                        -> END
                                        //5e fin
                
    // deuxième chemin où on se lève de suite        
    ===chemin2_bien===
    //douleur de départ 10
            [Vous enfilez votre casque de manière à ne pas trop écraser vos cheveux, vous remplissez votre bouteille d'eau que vous glissez dans votre sac, vous passez dans la cuisine pour attrapper un pain au chocolat tout frais puis vous trouvez quelques pillules dans la salle de bain.] 
            ~bouteilleEau += 1
            Bon, je vais pas faire de commentaires sur ton choix pour ne pas te spoiler la suite de ta journée... Oh mais regarde l'heure, le bus va bientôt arriver! Veux-tu faire encore quelque chose avant de sortir?
            *[Allumer le casque de musique.] ->casqueAllume
            *[Prendre l'anti-douleur.] -> anti_douleur_pris2
            *[Prendre une gorgée d'eau.] -> buDeLeau
            
    ===casqueAllume===
    Eh bien, tu sais que j'adore quand ta cervelle n'est pas être très bien oxygénée donc j'apprécie bien l'étreinte de ton casque~ Allez vas-y, démarre ta petite musique!
        *[Allumer le casque]
            {shuffle:
                -->CasqueBien
                -->CasqueMauvais
                }
        
        ===CasqueBien===
        [Malgré ce que dit le mal de tête, c'était un bon choix car la musique vous protégera du vacarme du bus! Mes félicitations, il perd -2 en puissance.]
        ~Douleur -= 2
        //douleur à 8
        ~casqueMusique +=1
        ->suite_chemin_bien
        
        ===CasqueMauvais===
        [Oh non, aujourd'hui vous êtes particulièrement sensible et la musique vous irrite :( C'est toujours meilleur que le bruit du bus donc vous gardez le casque sur la tête, mais la douleur gagne +10 en puissance.]
        ~ Douleur += 10
        //douleur à 20
        ->suite_chemin_bien
        
    ===anti_douleur_pris2===
    Hm, si j'étais toi je ne prendrais pas cette pilulle aussi vite... 
    ~bouteilleEau -= 1
                    {shuffle:
                        --> anti_douleur_bien2
                        --> anti_douleur_mal2 
                        }
                        ===anti_douleur_bien2===
                            ~Douleur -=5
                            //Douleur = 4
                            //eau à 0
                            [Bien joué, vous avez pris l'anti-douleur au moment parfait, il affaiblit le mal de tête de -5! Par contre vous n'avez plus d'eau dans votre bouteille.] 
                            -> suite_chemin_bien
                            
                        ===anti_douleur_mal2===
                            ~Douleur +=5
                            // Douleur = 14
                            //eau à 0
                            [Oh non! Vous prenez trop souvent des médicaments! Vous venez de renforcer le mal de tête de +5... Aussi, il ne vous reste plus d'eau :/] 
                            -> suite_chemin_bien
    ===buDeLeau===
    Hey hey, vas-y lentement tu vas encore te noyer! De plus, tu vas peut-être pas avoir le temps de passer aux toilettes avant ton cours. Tu es sûr que tu veux boire?
    *[Je veux quand même boire.]
                    ~Douleur -= 5
                    //douleur à 5
                    ~bouteilleEau -=1 
                    //eau à 0
                    {Douleur > 2: [Très bon choix, peut-être que votre vessie va en souffir mais le mal de tête a aussi perdu -5 en puissance! Par contre il ne vous reste plus d'eau...]} 
                    -> suite_chemin_bien
    *[Il a raison, je préfère ne pas boire.]
                    ~Douleur += 20
                    //douleur à 30
                    //eau reste à 1
                    {Douleur >2: Hahaha tu es tombé dans mon piège! Ta déshydratation et l'une de mes meilleures armes >:) Courage pour la suite de ta journée~ [le mal de tête gagne +20 en puissance]}
                    -> suite_chemin_bien
    ===suite_chemin_bien===                
       {Douleur >4: --> douleurPlusQue4}
       {Douleur <=4: --> douleurMoinsQue4}
       ===douleurPlusQue4===
      Bon super le bus arrive bientôt. Oh mais regarde-toi, tu n'as pas l'air trop dans ton assiette, qu'est-ce qui se passe? Ah oui: moi. Hahaha! Rolala quel comédien suis-je. 
       Mais vraiment, veux-tu faire quelque chose avant que le bus arrive?
       *[Ne rien faire.]
        Ah bah merci, pour une fois que je m'inquiète pour toi et tu le prends comme ça? Je vois >:(
            [Pas très malin, comme vous ne faites rien, le mal de tête gagne +10 en puissance...]
            ~Douleur += 10
            //douleur plus grande que 14
            ->surCampus
       *[Boire de l'eau.]
       Tu vas peut-être ne pas avoir le temps de passer aux toilettes avant ton cours. Tu es sûr que tu veux boire?
            **[Je veux quand même boire.]
                    ~Douleur -= 5
                    //douleur à 5
                    ~bouteilleEau -=1 
                    //eau à 0
                    {Douleur > 2: [Très bon choix, peut-être que votre vessie va en souffir mais le mal de tête a aussi perdu -5 en puissance! Votre bouteille est remplie.]} 
                    -> surCampus
            **[Il a raison, je préfère ne pas boire.]
                    ~Douleur += 20
                    //douleur à 30
                    //eau reste à 1
                    {Douleur >2: Hahaha tu es tombé dans mon piège! Ta déshydratation et l'une de mes meilleures armes >:) Courage pour la suite de ta journée~ [le mal de tête gagne +20 en puissance]}
                    -> surCampus
       
       *[Manger le petit pain au chocolat.]
        {shuffle: 
                -->painChocoBien
                -->painChocoMal
                }
        ===painChocoBien===
        Oh non vraiment? J'avais oublié que t'avais pris ce truc immonde avec toi >:( 
        [Vous avez soulagé votre faim qui renforçait le mal de tête, bien joué! Il perd -10 en puissance]
        ~Douleur -=10
        ->surCampus
        
        ===painChocoMal===
        Hmmmm j'-a-d-o-r-e le chocolat! Je te remercie pour cette petite sucrerie ~
        [Oh non, vous avez oublié que dans un pain AU CHOCOLAT il y a effectivement du chocolat, aliment qui renforce vos maux de tête... Le mal de tête gagne +20 en puissance.]
        ~Douleur += 20
        ->surCampus
        
       ===douleurMoinsQue4===
        [Le bus arrive et vous montez.] Hm c'est juste une impression ou il y a quelque chose qui te dérange? A part moi bien sûr hehe :P
        *[Mettre de la musique dans ton casque.]
        Ah tu crois que ces quelques misérables sons vont t'aider à me battre? Haha hâte de voir ça~
            {shuffle:
                -->CasqueBien2
                -->CasqueMauvais2
                }
        
            ===CasqueBien2===
            [Malgré ce que dit le mal de tête, c'était un bon choix car la musique vous protégera du vacarme du bus! Mes félicitations, il perd -2 en puissance.]
            ~Douleur -= 2
            ~casqueMusique +=1
            ->surCampus
        
            ===CasqueMauvais2===
            [Oh non, aujourd'hui vous êtes particulièrement sensible et la musique vous irrites :( C'est toujours meilleur que le bruit du bus donc vous gardez le casque sur ta tête, mais la douleur gagne +10 en puissance.]
            ~ Douleur += 10
            ->surCampus
        *[Ne rien faire.]
        Ah bah merci, pour une fois que je m'inquiète pour toi et tu le prends comme ça? Je vois >:(
            [Pas très malin, comme vous ne faites rien, le mal de tête gagne +10 en puissance...]
            ~Douleur += 10
            -> surCampus
        *[S'asseoir à côté de quelqu'un.]
        Je pense que tu devrais plutôt laisser la place aux personnes âgées car j'y crois moyen que ça va t'aider, mais bon fais comme tu veux...
            [Pas de chance, vous vous êtes assis à côté d'une personne qui se met à parler au téléphone à un volume très élevé :( Sa voix vous irrite mais vous n'osez pas vous lever avant l'arrivée à votre destination. Le mal de tête en profite en absorbant ce bruit pour gagner +15 en puissance.]
            ~Douleur +=15
        ->surCampus
        
    ===surCampus===
    {casqueMusique==0:Tout le monde avait beaucoup d'énergie à revendre ce matin tu ne trouves pas? Surtout ce bébé qui a pleuré tout le chemin, quelle douce mélodie pour mes oreilles!} <>
    
    Et mais fais attention où tu mets tes pieds quand tu descends! Bon, va-t-on directement dans ta salle de cours? -> les_chemins2
    ===les_chemins2===
        ***[Aller aux toilettes.]
            Aw mon pauvre chou, tu crois qu'un petit moment de tranquilité va me faire du mal? C'est vraiment mignon d'essayer ce genre de stratégie pathétique :) [Vous vous réfugiez un moment dans une cabine mais malheureusement ce n'est pas effectif...]
            ~Douleur -= 2
            {Douleur > 2 : [Malgré son attitude, le mal de tête perd un peu de sa puissance -2, c'était une plutôt bonne idée de se réfugier un moment aux toilettes!]}
            -> les_chemins2
        ***[Aller dans la salle de cours.]
            {casqueMusique==0: Super! Nous aurons plein de temps pour écouter les autres étudiants qui sont déjà arrivés et rester enfermé dans une salle sans air frais. Ah oui, par défaut tu seras aussi en avance pour ton cours.}
            {casqueMusique> 0: Bon d'accord alors allons-y! Comme ça on va pouvoir profiter de l'air non-frais avec les autres étudiants qui sont en avance :) }
            ~ Douleur += 20
            {Douleur > 2: [Vous sentez que vous allez souffrir :/ ]}
            -> SalleDeCours2
        ***[Aller à la cafétéria pour chercher de l'eau.]
            Roh non tu es sûr que tu veux boire de l'eau? N'oublie pas que ton cours va durer 2h sans pause, donc pas de toilettes...
                ****[Je veux toujours y aller.]
                    ~Douleur -= 5
                    ~bouteilleEau +=1 
                    //eau à 1
                    {Douleur > 2: [Très bon choix, peut-être que votre vessie va en souffir mais le mal de tête a aussi perdu -5 en puissance! Votre bouteille est remplie.]} 
                    {casqueMusique ==0: [Oh mais non! Vous n'avez pas mis votre casque, donc vous ne vous êtes pas protégé du bruit insupportable dans la cafétéria pendant que vous y preniez de l'eau :( le mal de tête gagne +10 en puissance.] } 
                    ~Douleur +=10
                    -> les_chemins2
                ****[Il a raison, je préfère ne pas boire.]
                    ~Douleur += 20
                    //eau reste à 0
                    {Douleur >2: Hahaha tu es tombé dans mon piège! Ta déshydratation et l'une de mes meilleures armes >:) Courage pour la suite de ta journée sans une goutte d'eau~ [le mal de tête gagne +20 en puissance]}
                    -> les_chemins2
        ***[Rester dehors jusqu'à l'heure du cours.]
            T'espères te rattraper un peu avec de l'air "frais"? Bonne chance à trouver un endroit où il n'y a personne qui fume :) car tu sais à quel point j'adore la fumée, n'est-ce pas?
                {shuffle:
                    --> rencontreFumeurs2
                    --> fumeursEvites2
                }
                ===fumeursEvites2===
                [Vous trouvez un endroit sans fumeur! L'air frais vous fait du bien et le mal de tête perd -5 en puissance.] -> les_chemins2
                ~Douleur -= 5
                
                ===rencontreFumeurs2===
                [Pas de chance! Un groupe de personnes sort pour fumer juste à côté de là où vous êtes assis et ce serait trop évident si vous vous cassez juste après leur arrivée... Le mal de tête gagne +10 en puissance.] -> les_chemins2
                ~Douleur += 10
            
            ===SalleDeCours2===
            Ah! J'avais oublié que les lumières étaient aussi blanches! Il faut avouer que les techniciens de l'uni ont quand même très bon goût. 
            ~Douleur += 30
            *****[Le cours commence.]
            [Le mal de tête gagne +30 en puissance. Vous essayez tout de même de vous concentrer durant les cours, mais tout du long vous ressentez que votre tête devient de plus en plus pesante. La voix de votre professeure retentit contre les parois de votre crâne. Vous commencez à voir un peu flou, ayant du mal à distinguer les mots sur les slides du cours. Les dizaines de clavier qui résonnent à travers la salle créent un orchestre insupportable. Vous avez envie d'éclater votre tête au sol ou tout simplement quitter la salle en courant. Mais vous ne pouvez pas. Et les gens autour restent ignorants de cela, vous devez rester fort et continuer le cours. Car au final, c'est vous qui vous retrouverez devant une feuille d'examen, alors il faut bien que vous sachiez quelque chose.]
                ******[Je vais serrer mes dents et rester pour le reste de mes cours.]
                    Selon moi ce n'est pas la meilleure idée, tu ne vois pas comment je mène la danse? Mais bon, je sens que tu tiendras pas longtemps de toute façon~ Tout ce que tu pourrais essayer de faire maintenant c'est peut-être boire de l'eau, mais est-ce que t'en as...? 
                    -> EauOuPas2
                ******[Je n'en peux plus, je vais rentrer.]
                    Alors comme ça je gagne une fois de plus? Ah mais ne t'en veux pas, on sait très bien que je suis trop puissant pour ton corps de mortel! Mes félicitations cependant, tu as pas trop mal tenu le coup aujourd'hui... Bon je te laisse rentrer et à demain comme d'hab!
                    Mauvaise fin.
                        -> END
                        //3e fin
                        ===EauOuPas2===
                            *******[Boire de l'eau]
                                {bouteilleEau >= 1: [Heureusement vous avez rempli votre bouteille! Vous buvez de l'eau durant les cours, cela vous aide un tout petit peu. Le mal de tête perd -5 en puissance.}<>
                                ~Douleur -= 5
                                {bouteilleEau < 1: [Vous n'avez pas d'eau pour combattre le mal de tête :/ Courage, le mal de tête gagne +20 en puissance avec le temps...} <>
                                -> finAvecEau2
                                ~Douleur += 20
                            *******[Ne pas boire.]
                                J'espère que tu sais que tu vas le regretter... 
                                -> finEnCours2
                                ===finEnCours2===
                                    Vous continuez votre journée de cours avec beaucoup de peine. A vrai dire, pour certaines périodes ça revient au même que si vous n'y étiez pas allé... Finalement vous arrivez à la fin de cette journée éprouvante pour vous retrouver chez vous après un trajet de retour épouventable. Vous n'avez plus de force pour faire quoique ce soit ni parler avec qui que ce soit. Vous vous enfermez dans votre chambre, en espérant que vous arriverez à retrouver sommeil plus facilement que la nuit précédente. Oui vous avze "réalisé" vos obligations de la journée, mais ceci n'est pas réellement une victoire. Ce n'était qu'une journée comme les autres, au final vous regrettez d'avoir continué cette aventure la tête baissée. Vous espèrez juste que demain ça ira peut-être mieux, même si votre espoir est très fin. Le mal de tête a gagné une fois encore.]
                                    Mauvaise fin.
                                        -> END
                                ===finAvecEau2===
                                    Vous galérez quand même toute la journée durant (et vous passez pas mal de temps aux toilettes aussi). Vous regrettez un peu de ne pas être rentré, en même temps ça aurait pu être pire. Cependant vous savez que demain ce sera la même histoire... cela vous désespère fortement...]
                                    Mauvaise fin.
                                        -> END
                                        
   //3e chemin après s'être directement levé                                     
    ===chemin2_horrible===
    //douleur de départ: 10
            [Vous retrouvez votre agenda sur ton bureau, sous la pile de livres que vous êtes censé lire pour la semaine prochaine... Vous ramassez une poignée de stylos pour les jeter dans votre sac, pour ensuite sortir votre chargeur de la prise en le tirant par son câble, comme un barbare. Enfin vous attrappez vos écouteurs dont le fil est comme toujours emmelé.]
            Bon, je vais pas faire de commentaires sur ton choix pour ne pas te spoiler la suite de ta journée... Oh mais regarde l'heure, le bus va bientôt arriver! Veux-tu faire encore quelque chose avant de sortir?
            *[Regarder mon agenda.] ->regardeAgenda
            *[Observer mes beaux stylos.] -> regarderStylos
            *[Démeler mes écouteurs pour les mettre.] -> demeleEcouteurs 
            
    ===regardeAgenda===
    C'est bien de te préoccuper de ton organisation, alors voyons voir... Ah! Tu as une présentation à faire aujourd'hui, tu savais ça? Et demain t'as aussi un rdv très important pour ce petit job dont tu rêves tant ~ 
    [Ces nouvelles qui vous avaient complètement sorti de la tête commencent à vous stresser, le mal de tête gagne +5 en puissance, il valait peut-être mieux d'ignorer votre agenda... :/ Vous faites le chemin pour arriver dans le bus.]
    ~Douleur += 5 
    //douleur = 15
    -> allerBus
    ===regarderStylos===
    ... Euh oui, ils sont très beaux tes stylos... Mais je crois bien que ce sont les mêmes que tu as depuis 3 ans là non? Je sais bien que j'ai dit que t'avais un peu de temps à perdre mais pourquoi le faire de cette manière?
    [Le mal de tête est simplement confus, c'est nouveau ça. Vous faites le chemin pour arriver dans le bus.]
    -> allerBus
    ===demeleEcouteurs===
    Je me suis toujours demandé ce qui se passe dans les sacs et dans les poches pour que les écouteurs finissent dans cet état, pas toi?
    [Vous démelez vos écouteurs avec plus ou moins de peine et vous glissez chaque oreillettes dans vos orifices. La musique commence à jouer. <>
    ~ecouteurDansOreille += 1
    -> allerBus
    
    ===allerBus===
    //bus sans écouteurs 
    {ecouteurDansOreille ==0 : Wow ce qu'il y a du bruit aujourd'hui! En plus il fait si beau, regarde comment le soleil brille de toutes ses forces! [Vous jettez un coup d'oeil par la fenêtre pour vous ramasser le plus gros rayon de soleil de votre vie dans les yeux. C'était très simple comme piège mais vous vous êtes fait avoir... on dirait limite que vous ne faites pas d'efforts. Le mal de tête gagne +5 en puissance.] -> mettreEcouteursOuPas }
        ~ Douleur += 5
        //douleur = 15 ou 20
    //bus avec écouteurs
    {ecouteurDansOreille ==1: Vous montez dans le bus avec une douce mélodie qui vous accompagne, vous avez l'impression d'être intouchable. (malgré toutes les personnes qui sont collées à vous)] -> malOreilleOuPas}
    
    ===mettreEcouteursOuPas===
    Hey, je sais que je viens de te jouer un sale coup... Pour me repentir, je te permets de mettre tes petits écouteurs si t'en as envie?
        *[J'aimerais utiliser mes écouteurs] ->EcouteurMis2
        *[Je ne le sens pas, je préfère ne rien faire.]
            Euh, pour une fois que j'essaye de t'aider... mais d'accord tu fais comme tu veux~ ...Espèce de petit ingrat... [Le mal de tête est un peu frustré par votre rejet. Vous continuez votre trajet en subissant le bruit autour et il gagne +10 en puissance.]
            ~Douleur +=10
            ->sortieDuBus
        *[Non merci, ils sont trop emmelés et je ne veux pas me battre avec dans le bus.]
            Pour une fois que j'essaye de te venir en aide, mais d'accord, c'est une raison valable. [Vous continuez votre trajet en subissant le bruit autour et il gagne +10 en puissance.]
            ~Douleur +=10
            ->sortieDuBus
    ===EcouteurMis2===
    [Vous galérez un peu à démeler vos écouteurs, quelques passagers se prennent vos coups de coude sans trop râler. Enfin vous arrivez à les mettre pour vous couper du vacarme qui préside dans votre entourage.]
    ->malOreilleOuPas
    
    //suite_du trajet en bus
    ===malOreilleOuPas===
    {shuffle: 
        -->malOreille
        -->pasMalOreille
        }
            ===malOreille===
            Hey, c'est juste moi ou la fête est en train de commencer? J'ai l'impression que tes petites tampes m'appellent comme un chant de sirène~ [Les écouteurs vous ont protégé des bruits extérieurs mais l'inconfort dans vos oreilles et la musique à un volume un peu trop élevée se met à vous démenger... Le mal de tête gagne +20 en puissance]
                ~Douleur += 20
                ->sortieDuBus
            ===pasMalOreille===
            Uh, hey uh - j'aimerais euh- pouvoir euh... - te parler? [Vous passez un trajet relativement calme avec la musique qui assourdit un peu la voix du mal de tête. Profitez bien de ce moment.]
                ->sortieDuBus
                
    //arrivée à l'uni avec écouteur, chargeur, stylo, agenda -> douleur la plus basse = 10
    ===sortieDuBus===
    Fais gaffe où tu mets les pieds! ...Eh bien, je rigolais avant avec le soleil mais là il tape vraiment! Je crois que c'est le jour le plus ensoleillé de l'année, je parie que tu regrettes de ne pas avoir pris tes lunettes de soleil, hein? Que vas-tu faire? Enrouler ton chargeur autour de ta tête? [Le mal de tête a raison, vous n'avez pas été très malin sur le coup, il gagne encore +20 en puissance]
        ~Douleur += 20

    Oh et j'ai presque oublié que t'as cette présentation pour laquelle j'imagine que tu n'es pas prêt? ça va, pas trop le stress~ ?
        *Non je me sens confiant.
            Hahaha j'aime bien quand tu vis dans la désillusion, je sens bien que ta tension est en train de monter. Surtout avec ma présence en plus! ->boireEauPasPossible
        *Oui je n'arrive pas à croire que j'ai oublié :'(
            Ouais je serais aussi dans le stress à ta place :D -> boireEauPasPossible
            
    ===boireEauPasPossible===
        Est-ce que t'aimerais boire de l'eau pour te calmer un peu? Le stress profite toujours de la déshydratation (chose que je connais aussi hehe)
            *[J'aimerais boire.]
                Mais oui bien sûr! Ah attends... HAHAHAHA rappelle-moi, est-ce que t'as pris ta bouteille d'eau? Je ne crois pas :P
                [Le mal de tête se paye la votre, c'est juste moi ou il devient graduellement de plus en plus sadique? Désolé mais il fallait faire de meilleur choix. Vous ne buvez pas, ce qui empire votre stress et le mal de tête gagne +15 en puissance.]
                ~Douleur +=15
                ->resteSansBoire
                
            *[Non ça va aller.]
                Eh bien tant mieux car de toute façon tu n'avais pas pris ta bouteille :P
                [Très bizarre comme choix mais disons qu'au moins vous vous êtes évité un vent. Vous ne buvez pas, ce qui empire votre stress et le mal de tête gagne +15 en puissance.] 
                ~Douleur +=15
                ->resteSansBoire
                
    ===resteSansBoire===
    Je te rappelle que ta présentation aura lieu à ton dernier cours de la journée, courage pour tenir tout ce temps! Ou bien tu veux déjà rentrer?
        *[Oui je veux rentrer.]
            Alors, je te juge fort mais je vais pas te retenir. J'imagine que ne pas valider un cours n'a plus la même valeur qu'à une certaine époque...
            [Honteux, vous retroussez votre chemin pour rentrer à la maison. Vous vous enfermez dans votre chambre, en espérant que tu arriveras à combattre ce foutu mal de tête. Ceci n'était qu'une "journée" comme les autres, au final tu regrettes d'avoir même tenté de sortir. Tu espères juste que demain ça ira peut-être mieux, même si ton espoir est très fin. Le mal de tête a gagné une fois encore.]
            Mauvaise fin.
                -> END
                
        *[Non je dois faire cette présentation.]
          Okay je respecte fortement ta décision à vue de ce que t'as emmené avec toi ce matin... [Vous continuez à vous battre malgré le désespoir qui grandit en vous. Vous passez l'une des pires journées de votre vie, mais vous arrivez d'une manière ou d'une autre à le supporter jusqu'à votre présentation qui ne se passe pas à merveille. Mais vous vous dites qu'au moins c'est fait. Le mal de tête gagne encore +30 en puissance.]
          ~Douleur += 30
        
        Wow à vrai dire j'y croyais moyen, mais t'es encore "plus ou moins" là :0 Tu penses pas que tu devrais jeter encore un petit coup d'oeil à ton agenda?
            **[Vérifier mon agenda.]
                Oh mais que vois-je? Tu es censé faire tes courses aujourd'hui! J'avoue que ce matin il n'y avait pas grand chose dans le frigo. Trop trop bien, j'adore tellement les magasins! Avec toutes ces petites odeurs, la lumière, les gens, le bruit, le chauffage ou la climatisation totalement déreglés: c'est tout simplement mon paradis!
                    ***[Bon puisqu'il faut...Allons-y.]
                        Super! 
                        [Vous reprenez le bus pour vous rendre au magasin le plus proche. L'expérience ressemble fortement à ce que le mal de tête vient de vous décrire. C'est la souffrance totale avec la lumière pire que les rayons de soleil, des enfants qui courent de partout que vous essayez d'éviter et les "beep" constants des caisses. Vos achats sont rapides et bien sûr vous râtez quelques produits de votre liste mais tant pis. Finalement vous prenez le chemin pour rentrer, un peu fier de vous que vous ayez fait les courses. Toutefois, le mal de tête a gagné +50 durant cet exploit, ce qui vous empêche de cuisiner... Vous grignottez un petit quelque chose avant de vous coucher. La faim et la douleur rendent le sommeil difficile mais vous essayez pendant plusieurs heures pour que finalement cette journée de l'enfer prenne fin. En espérant que le lendemain sera plus simple...]
                        Mauvaise fin.
                        -> END
                    ***[Je préfère crever de faim.] ->PasMagasin
            **[Quelle blage, tout ce que je veux c'est rentrer chez moi!] 
            ->PasMagasin
            
    ===PasMagasin===
    Bon d'accord, mais je ne veux pas t'entendre râler plus tard que tu as faim ou quoique ce soit, okay?
    [Vous prenez le chemin de retour totalement épuisé. Le regret de ne pas être allé faire les courses ne se ressent que quelques heures après votre retour à la maison. Vous buvez un peu d'eau pour couper votre appétit sans grand succès, donc vous décidez de vous coucher plus tôt car de toute façon vous n'avez pas l'énergie de faire quoique ce soit. La faim et la douleur rendent le sommeil difficile mais vous essayez pendant plusieurs heures pour que finalement cette journée de l'enfer prenne fin. En espérant que le lendemain sera plus simple...]
    Mauvaise fin.
        ->END

===chemin3===
[Vous attrappez votre natel à l'aveugle]
//rendre l'écran clair
Ohohoho! Petit coquin, tu sais très bien que j'adore la lumière bleu, c'est comme un soleil personnel pour moi! J'ai l'impression de grandir telle une petite plante ~ [Le mal de tête gagne +20 en puissance.] 
        ~Douleur += 20
    Est-ce que tu veux que je surveille l'heure pour toi?
    *[Non ça va aller, je vais prendre un peu mon temps.] -> enRetard
    *[Hmmm je vais plutôt le surveiller moi-même.] -> enRetard
    
    ===enRetard===
    [Au début votre vision est un peu floue mais vous persistez. Après quelques clignements des yeux, vous répondez à tous vos messages, allez un peu voir votre fil d'actualité sur les réseaux sociaux, etc. pour rendre le réveil un peu plus supportable. Soudainement vous jetez un coup d'oeil au coin droit de votre écran et voyez que votre réveil avait sonné il y a presque 30 minutes. Vous sortez de votre lit d'un bond bien energétique!]
    Ah je me disais bien que ta "pause" était un peu longue! Mais bon, moi je profitais de cette lumière que j'aime tant hihi~ quel coquin je suis! [Lorsque vous vous levez vous sentez que votre tête est déjà pesante. Le mal de tête a gagné +15 en puissance. Vous devez l'ignorer pourtant si vous voulez avoir une chance d'être à l'heure. Pas le temps de niaiser, vous attrapez votre sac de cours.] Hey! Tu es sûr que tu veux pas au moins glisser un objet dedans? Histoire d'avoir la moindre chance de me battre aujourd'hui hehehe
        ~Douleur +=15

    *[Prendre une bouteille d'eau à moitié remplie.]
        [Vous glissez votre bouteille d'eau dans votre sac puis vous tapez votre meilleur sprint pour attrapper le bus. Essouflé, vous montez dedans en épuisant vos dernières forces.] 
        ->arriveeBusEau
    ~bouteilleEau +=1
    *[Prendre mon casque de musique.]
        [Vous enfilez votre casque de manière à ne pas trop écraser vos cheveux puis vous tapez votre meilleur sprint pour attrapper le bus. Essouflé, vous montez dedans en épuisant vos dernières forces.] 
        ->arriveeBusMusique
    *[Prendre un petit snack.]
        [Vous passez rapidement par la cuisine pour prendre un petit pain au chocolat tout frais puis vous tapez votre meilleur sprint pour attrapper le bus. Essouflé, vous montez dedans en épuisant vos dernières forces.]
        ->arriveeBusChoco
        ~painChoco += 1
    
    ===arriveeBusEau===
    Eh bien je crois que ça fait des années que je ne t'ai pas vu bouger autant! C'est super, quand tu fais du sport c'est gagnant gagnant puisqu'on finit les deux en meilleure forme! [Le mal de tête apprécie votre effort physique qui lui fait gagner +10 en puissance.] 
    Bon maintenant que t'as repris ton souffle, veux-tu profiter de l'objet que t'as pu embarquer avec toi?
    
        *[Prendre une gorgée d'eau, c'est tout ce que j'attends :')]
        Rolala t'es sûr que tu préfères boire? Le net c'est tellement plus fun quand même... [Vous ignorez ses remarques et buvez l'eau jusqu'à la dernière goutte! C'était un très bon choix car le mal de tê- attendez, la faim et le bruit se manifestent, c'est alors qu'il reprend le double en puissance! +40]
        Mouahahaha tu croyais vraiment qu'un peu d'eau pouvais te sauver? Tu crois que je suis qui, une pauvre gueule de bois? Profite bien de ma compagnie~ on va arriver sur le campus en deux-deux! 
        ~Douleur += 40 
        ->arriveeCampus
        ~Douleur += 40 
        *[Non, je préfère utiliser mon natel.] ->utiliserNatel
        
    ===arriveeBusMusique===
  Eh bien je crois que ça fait des années que je ne t'ai pas vu bouger autant! C'est super, quand tu fais du sport c'est gagnant gagnant puisqu'on finit les deux en meilleure forme! [Le mal de tête apprécie votre effort physique qui lui fait gagner +10 en puissance.] 
    Bon maintenant que t'as repris ton souffle, veux-tu profiter de l'objet que t'as pu embarquer avec toi? 
    
    *[Allumer la musique sur mon casque.]
    Rolala t'es sûr que tu veux juste écouter de la musique? Le net c'est tellement plus fun quand même... [Vous ignorez ses remarques et allumez votre casque pour bloquer le vacarme du bus! C'était un très bon choix car le mal de tê- attendez, la faim et la déshydratation se manifestent, c'est alors qu'il reprend le double en puissance! +40]
        Mouahaha tu croyais vraiment qu'un peu de musique pouvait te sauver? Tu te crois où? Allez, profite bien de ma compagnie~ on va arriver sur le campus en deux-deux! 
                    ~Douleur += 40 
        ->arriveeCampus

    *[Non, je préfère utiliser mon natel.]->utiliserNatel

    ===arriveeBusChoco===
Eh bien je crois que ça fait des années que je ne t'ai pas vu bouger autant! C'est super, quand tu fais du sport c'est gagnant gagnant puisqu'on finit les deux en meilleure forme! [Le mal de tête apprécie votre effort physique qui lui fait gagner +10 en puissance.] 
    Bon maintenant que t'as repris ton souffle, veux-tu profiter de l'objet que t'as pu embarquer avec toi?
    
    *[Comme j'ai loupé mon petit déjeuner je ne dis pas non à un petit morceau.]
    Rolala t'es sûr que tu veux manger? Tu vas juste prendre du poids et le net c'est tellement plus fun quand même... [Vous ignorez ses remarques et mangez votre petit pain! C'était un très bon choix car le mal de tê- attendez, le bruit et la déshydratation se manifestent, c'est alors qu'il reprend le double en puissance! +40]
        Mouahaha tu croyais vraiment qu'un peu de bouffe pouvait te sauver? Tu te crois où? Allez, profite bien de ma compagnie~ on va arriver sur le campus en deux-deux! 
                    ~Douleur += 40 
        ->arriveeCampus
    *[Non, je préfère utiliser mon natel.]->utiliserNatel
    
===utiliserNatel===
[Vous ressortez votre natel pour vous occuper le temps du trajet. Vous vous noyez dans le divertissement et les nouvelles, jusqu'à ce que vous levez les yeux pour voir que vous avez râté votre arrêt! Dans la panique vous sortez au prochain.] 
Eh bien ça fait plaisir de voir que tu n'apprends pas de tes erreurs...Oh en plus regarde ça, il pleut! Alors? Moi je suis bien mais que veux-tu faire? [Le mal de tête gagne +20 en puissance car vous commencez à stresser et la pluie ne vous aide pas.]
    *[J'en peux plus, je veux rentrer :(]
        C'est une vertu de savoir laisser tomber quand il faut :) peut-être que t'auras plus de chance demain? 
        Mauvaise fin.
        -> END
        //fin d'abandon car en retard 
    *[Je peux le surmonter, je préfère arriver en retard que pas du tout.]
    Plutôt impressionnante ta motivation, même si j'y crois moyen :P 
    [Vous trainez un peu vos pieds mais vous reprenez le bus dans le sens inverse pour finalement arriver sur le campus. <>
    -> etreEnRetard
    
===arriveeCampus===
Oh mais c'est super, regarde-moi ça! Il pleut! N'est-ce pas magnifique? ça va faire tellement du bien aux plantes, ainsi que M-O-I ! Holala ne tires pas une tête pareille, quoi, tu es fait de sucre? [Le mal de tête profite du temps, il gagne +20 en puissance.]
~Douleur += 20
Mais quoi, ne me dis pas que tu veux rentrer???
    *[Si >:(]
        Je voudrais dire que je suis déçu de toi mais sincèrement je ferais la même chose à ta place. De toute façon j'ai déjà pu profiter un peu de ce temps *inspire* aaaah cette odeur de l'humidité, je m'en fatiguerai jamais!
        [Vous rentrez épuisé alors qu'en soi vous n'avez rien fait de la journée à part courir un peu. Le temps et la douleur vous donnent envie de dormir, donc vous abandonnez cette journée pourrie en espérant que demain se passera mieux...]
        Mauvaise fin.
        ->END
    *[Avec le temps je suis habitué et je ne me suis pas dépêché pour finalement ne pas aller en cours.]
        Bon ce n'est pas moi qui vais me plaindre! Alors allons-y en cours~ [Vous allez en cours toutefois avec du regret... fallait-il rentrer? Vous perséverez pendant les deux premiers cours, finalement vous arrivez à l'heure de pause] 
        Wow ça fait longtemps que je n'ai pas été autant en forme! (bon peut-être que c'était hier hihi)-> les_chemins_derniere_voix
        
        ===les_chemins_derniere_voix===
         Alors, que vas-tu faire durant la pause pour me calmer un peu?
        ***[Aller aux toilettes.]
            Aw mon pauvre chou, tu crois qu'un petit moment de tranquilité va me faire du mal? C'est vraiment mignon d'essayer ce genre de stratégie pathétique :) [Vous vous réfugiez un moment dans une cabine mais malheureusement ce n'est pas effectif...]
            ~Douleur -= 2
            {Douleur > 2 : [Malgré son attitude, le mal de tête perd un peu de sa puissance -2, c'était une plutôt bonne idée de se réfugier un moment aux toilettes!] -> les_chemins_derniere_voix}
        ***[Aller dans la salle de cours.]
            Super! Nous aurons plein de temps pour écouter les autres étudiants qui sont déjà arrivés et rester enfermé dans une salle sans air frais. Ah oui, par défaut tu seras aussi en avance pour ton cours. 
            ~ Douleur += 20
            {Douleur > 2: [Vous sentez que vous allez souffrir :/ ] -> SalleDeCours5}
        ***[Aller à la cafétéria pour boire de l'eau.]
            Roh non tu es sûr que tu veux boire de l'eau? N'oublie pas que ton cours va durer 2h sans pause, donc pas de toilettes...
                ****[Je veux toujours y aller.]
                    ~Douleur -= 5
                    //eau à > 1
                    {Douleur > 2: [Très bon choix, peut-être que votre vessie va en souffir mais le mal de tête a aussi perdu -5 en puissance!]} 
                    -> les_chemins_derniere_voix
                ****[Il a raison, je préfère ne pas boire.]
                    ~Douleur += 20
                    //eau reste à 0
                    {Douleur >2: Hahaha tu es tombé dans mon piège! Ta déshydratation et l'une de mes meilleures armes >:) Courage pour la suite de ta journée sans une goutte d'eau~ [le mal de tête gagne +20 en puissance]-> les_chemins_derniere_voix}
        ***[Rester dehors jusqu'à l'heure du cours.]
            T'espères te rattraper un peu avec de l'air "frais"? Bonne chance à trouver un endroit où il n'y a personne qui fume :) car tu sais à quel point j'adore la fumée, n'est-ce pas?
                {shuffle:
                    --> rencontreFumeurs5
                    --> fumeursEvites5
                }
                ===fumeursEvites5===
                [Vous trouvez un endroit sans fumeur! L'air frais vous fait du bien et le mal de tête perd -5 en puissance.] -> les_chemins_derniere_voix
                ~Douleur -= 5
                
                ===rencontreFumeurs5===
                [Un groupe de personnes sort pour fumer juste à côté de là où vous êtes assis, pas de chance! Le mal de tête gagne +5 en puissance.] -> les_chemins_derniere_voix
                ~Douleur += 5
            
            ===SalleDeCours5===
            Ah oui! J'avais oublié que les lumières étaient aussi blanches! Il faut avouer que les techniciens de l'uni ont quand même un très bon goût. 
            ~Douleur += 50
            *****[Le cours commence.]
            [Le mal de tête gagne +50 en puissance. Vous essayez tout de même de vous concentrer durant les cours, mais tout du long vous ressentez que votre tête devient de plus en plus pesante. La voix de votre professeure retentit contre les parois de votre crâne. Vous commencez à voir un peu flou, ayant du mal à distinguer les mots sur les slides du cours. Les dizaines de clavier qui résonnent à travers la salle créent un orchestre insupportable. Vous avez envie d'éclater votre tête au sol ou tout simplement quitter la salle en courant. Mais vous ne pouvez pas. Et les gens autour ne savent pas tout ça, vous devze rester fort et continuer le cours. Car au final, c'est vous qui vous retrouverez devant la feuille d'examen, alors il faut bien que vous sachiez quelque chose.]
                ******[Je vais serrer mes dents et rester pour le reste de mes cours.]
                    Selon moi ce n'est pas la meilleure idée, tu ne vois pas comment je mène la danse? Mais bon, je sens que tu tiendras pas longtemps de toute façon~
                        -> finEnCours5
                ******[Je n'en peux plus, je vais rentrer.]
                    Alors comme ça je gagne une fois de plus? Ah mais ne t'en veux pas, on sait très bien que je suis trop puissant pour ton corps de mortel! Mes félicitations cependant, tu as pas trop mal tenu le coup aujourd'hui... Bon je te laisse rentrer et à demain comme d'hab!
                    Mauvaise fin.
                        -> END
                        //3e fin
                                    ===finEnCours5===
                                    Vous continuez votre journée de cours avec beaucoup de peine. Il a plu toute la journée et vous êtes hyper fatigué... En plus vous n'avez pratiquement pas bu. Finalement vous arrivez à la fin de cette journée éprouvante pour vous retrouver chez vous après un trajet de retour épouventable. Vous n'avez plus de force pour faire quoique ce soit ni parler avec qui que ce soit. Vous vous enfermez dans votre chambre, en espérant que vous arriverez à retrouver sommeil plus facilement que la nuit précédente. Oui vous as "réalisé" vos obligations de la journée, mais ceci n'est pas réellement une victoire. Ce n'était qu'une journée banale pour vous mais vous regrettez tout de même d'avoir continué cette aventure la tête baissée comme d'habitude. Vous espérez juste que demain ça ira peut-être mieux, même si votre espoir est très faible. Le mal de tête a gagné une fois encore.]
                                    Mauvaise fin.
                                        -> END
                                        //4e fin
                            
    
===etreEnRetard===
Vous arrivez en cours de nouveau essouflé et surtout en retard, mais bien sûr comme c'est l'université, votre professeur ne fait pas de remarque. Avec la basse tension causée par la pluie vous vous sentez trois fois pire que la normale. Vous suivez avec du mal tous vos cours, tout en regrettant de ne pas avoir profité pour rentrer quand vous avez râté votre arrêt. Peut-être que c'était un signe pour que vous laissiez tomber? Vous savez en tout cas que demain vous allez éviter de toucher à votre téléphone portable.]
Mauvaise fin.
->END


