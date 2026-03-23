importer requests
de bs4 importer BeautifulSoup

déf scraper_table(url):
    reponse = requests.get(url)
    si reponse.status_code == 200:
        soupe = BeautifulSoup(reponse.text, 'html.parser')
        tables = soupe.trouver_tout('table')
        pour t dans tables:
            lignes = t.trouver_tout('tr')
            pour l dans lignes:
                cellules = l.trouver_tout(['td', 'th'])
                donnees = [c.obtenir_texte().nettoyer() pour c dans cellules]
                afficher(donnees)
    sinon:
        afficher("Erreur")

si __name__ == "__main__":
    cible = saisir("URL : ")
    scraper_table(cible)
