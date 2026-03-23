importer requests
de bs4 importer BeautifulSoup
importer json

déf scraper_json(url):
    reponse = requests.get(url)
    si reponse.status_code == 200:
        soupe = BeautifulSoup(reponse.text, 'html.parser')
        scripts = soupe.trouver_tout('script', type='application/ld+json')
        pour s dans scripts:
            afficher(s.obtenir_texte())
    sinon:
        afficher("Erreur")

si __name__ == "__main__":
    cible = saisir("URL : ")
    scraper_json(cible)
