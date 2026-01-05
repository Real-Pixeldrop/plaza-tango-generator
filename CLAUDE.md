# Plaza Tango Generator

Generateur de contenus marketing pour le Festival Plaza Tango — 5e edition (24-26 avril 2026, Belfort).

## Fichiers

- `generator.html` — Application principale (posts, storys, newsletters)
- `logo.png` — Logo du festival
- `assets/` — Images des artistes et visuels
- `start.sh` — Lance le serveur local (http://localhost:8080)

## Lancer l'app

```bash
./start.sh
```

## Contenu disponible

- **36 posts Instagram** (1080x1080) — Calendrier du 5 jan au 1er mai
- **36 storys** (1080x1920) — Memes visuels en vertical
- **8 newsletters** — Segmentees par audience (tous, anciens, inscrits, non-inscrits)

## Calendrier editorial

| Jour | Type de contenu |
|------|-----------------|
| Lundi | Educatif (histoire, vocabulaire) |
| Mercredi | Tips, techniques |
| Vendredi | Artistes (maestros, orchestres, DJs) |
| Samedi | Interactif (concours, sondages) |
| Dimanche | Coulisses, temoignages |

## Charte graphique

- **Bordeaux** : #4A1A1F
- **Or** : #C9A96E
- **Typos** : Archivo Black, Space Grotesk, DM Sans

## Notes techniques

### Export PNG avec html2canvas

**Bug connu** : html2canvas ne gere pas correctement `object-fit: cover`. Les images apparaissent ecrasees/deformees.

**Solution** : Avant la capture, convertir les `<img>` en `background-image` sur le parent :

```javascript
const bgImages = element.querySelectorAll('.bg img, .bg-photo img, .photo-half img');
bgImages.forEach(img => {
  const parent = img.parentElement;
  parent.style.backgroundImage = `url(${img.src})`;
  parent.style.backgroundSize = 'cover';
  parent.style.backgroundPosition = 'center';
  img.style.visibility = 'hidden';
});
```

## TODO

- [ ] Ameliorer le design des newsletters (modal email)
- [ ] Ajouter les vraies images dans `assets/`
