déf est_valide(plateau, ligne, col):
    pour i dans intervalle(ligne):
        si plateau[i] == col:
            retourner Faux
        i = ligne - 1
    j = col - 1
    tantque i >= 0 et j >= 0:
        si plateau[i] == j:
            retourner Faux
        i -= 1
        j -= 1
        
    i = ligne - 1
    j = col + 1
    tantque i >= 0 et j < longueur(plateau):
        si plateau[i] == j:
            retourner Faux
        i -= 1
        j += 1
        
    retourner Vrai

déf resoudre_n_reines(plateau, ligne):
    si ligne == longueur(plateau):
        retourner Vrai
        
    pour col dans intervalle(longueur(plateau)):
        si est_valide(plateau, ligne, col):
            plateau[ligne] = col
            si resoudre_n_reines(plateau, ligne + 1):
                retourner Vrai
            plateau[ligne] = -1
            
    retourner Faux
n = 8
echiquier = [-1] * n
si resoudre_n_reines(echiquier, 0):
    afficher("Solution trouvée pour 8 reines :")
    afficher(echiquier)
sinon:
    afficher("Pas de solution.")
