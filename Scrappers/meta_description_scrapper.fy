importer requests
de bs4 importer BeautifulSoup

déf scraper_meta(url):
    reponse = requests.get(url)
    si reponse.status_code == 200:
        soupe = BeautifulSoup(reponse.text, 'html.parser')
        meta = soupe.trouver('meta', attrs={'name': 'description'})
        si meta:
            afficher(meta.obtenir('content'))
        sinon:
            afficher("Rien")
    sinon:
        afficher("Erreur")

si __name__ == "__main__":
    cible = saisir("URL : ")
    scraper_meta(cible)
