déf generer_premiers(n):
    si n < 2:
        retourner []
        
    est_premier = [Vrai] * (n + 1)
    est_premier[0] = Faux
    est_premier[1] = Faux
    
    pour p dans intervalle(2, entier(n**0.5) + 1):
        si est_premier[p] == Vrai:

            pour i dans intervalle(p * p, n + 1, p):
                est_premier[i] = Faux
                
    premiers = []
    pour num dans intervalle(2, n + 1):
        si est_premier[num]:
            premiers.ajouter(num)
            
    retourner premiers

limite = 50
afficher("Nombres premiers jusqu'à " + chaine(limite) + " :")
afficher(generer_premiers(limite))
