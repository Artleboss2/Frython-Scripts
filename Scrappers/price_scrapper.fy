importer requests
de bs4 importer BeautifulSoup

déf scraper_prix(url):
    reponse = requests.get(url)
    si reponse.status_code == 200:
        soupe = BeautifulSoup(reponse.text, 'html.parser')
        prix = soupe.trouver_tout('span', classe_='price')
        pour p dans prix:
            afficher(p.obtenir_texte().nettoyer())
    sinon:
        afficher("Erreur")

si __name__ == "__main__":
    cible = saisir("URL : ")
    scraper_prix(cible)
