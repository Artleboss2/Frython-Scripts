importer requests
de bs4 importer BeautifulSoup

déf scraper_articles(url):
    reponse = requests.get(url)
    si reponse.status_code == 200:
        soupe = BeautifulSoup(reponse.text, 'html.parser')
        articles = soupe.trouver_tout('article')
        pour art dans articles:
            h2 = art.trouver('h2')
            si h2:
                afficher(h2.obtenir_texte().nettoyer())
    sinon:
        afficher("Erreur")

si __name__ == "__main__":
    cible = saisir("URL : ")
    scraper_articles(cible)
