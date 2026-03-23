déf dijkstra(graphe, depart):
    distances = {}
    pour noeud dans graphe:
        distances[noeud] = 999999 # Simule l'infini
    distances[depart] = 0
    
    visites = []
    noeuds_a_traiter = liste(graphe.clés())

    tantque longueur(noeuds_a_traiter) > 0:
        # Trouver le nœud avec la distance minimale
        noeud_actuel = Rien
        pour noeud dans noeuds_a_traiter:
            si noeud_actuel est Rien:
                noeud_actuel = noeud
            sinonsi distances[noeud] < distances[noeud_actuel]:
                noeud_actuel = noeud

        si distances[noeud_actuel] == 999999:
            casser

        noeuds_a_traiter.retirer(noeud_actuel)
        
        # Mise à jour des voisins
        pour voisin, poids dans graphe[noeud_actuel].éléments():
            distance = distances[noeud_actuel] + poids
            si distance < distances[voisin]:
                distances[voisin] = distance
    
    retourner distances

# Exemple de test
graphe_test = {
    'A': {'B': 1, 'C': 4},
    'B': {'A': 1, 'C': 2, 'D': 5},
    'C': {'A': 4, 'B': 2, 'D': 1},
    'D': {'B': 5, 'C': 1}
}

résultat = dijkstra(graphe_test, 'A')
afficher("Distances depuis A :")
afficher(résultat)
