déf recherche_binaire(liste_triee, cible):
    bas = 0
    haut = longueur(liste_triee) - 1
    
    tantque bas <= haut:
        milieu = (bas + haut) // 2
        valeur = liste_triee[milieu]
        
        si valeur == cible:
            retourner milieu
        sinonsi valeur < cible:
            bas = milieu + 1
        sinon:
            haut = milieu - 1
            
    retourner -1

ma_liste = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
chercher = 13
index = recherche_binaire(ma_liste, chercher)

si index != -1:
    afficher("L'élément " + chaine(chercher) + " est à l'index " + chaine(index))
sinon:
    afficher("Élément non trouvé.")
