# Site de mariage - Zélie & Clément

Clone indépendant du site Canva : https://zelieetclement.fr

## 📁 Structure des fichiers

```
zelieetclement/
├── index.html          # Le site complet
├── images/             # Dossier pour les images (à créer)
├── download-images.sh  # Script pour télécharger les images
└── README.md           # Ce fichier
```

## 🚀 Mise en place

### Étape 1 : Télécharger les images

Les images sont actuellement chargées depuis le site Canva. Pour être complètement indépendant, téléchargez-les :

```bash
chmod +x download-images.sh
./download-images.sh
```

Puis modifiez `index.html` pour utiliser les images locales :
- Remplacez `https://zelieetclement.fr/_assets/media/4121a9d5c75ed8f21294fd775b588c86.jpg` par `images/hero.jpg`
- Remplacez `https://zelieetclement.fr/_assets/media/d19658f9654f54c3244a40e4522b7ac8.jpg` par `images/rsvp.jpg`
- etc.

### Étape 2 : Configurer le formulaire RSVP

Le formulaire utilise actuellement un placeholder. Vous avez plusieurs options :

#### Option A : Formspree (gratuit, recommandé)
1. Allez sur https://formspree.io
2. Créez un compte gratuit
3. Créez un nouveau formulaire
4. Copiez l'ID du formulaire (ex: `xyzabcde`)
5. Dans `index.html`, remplacez `VOTRE_ID` dans `action="https://formspree.io/f/VOTRE_ID"`

#### Option B : Netlify Forms (si hébergé sur Netlify)
1. Ajoutez `data-netlify="true"` à la balise `<form>`
2. Netlify détectera automatiquement le formulaire

#### Option C : Google Forms
1. Créez un Google Form avec les mêmes champs
2. Intégrez-le dans la page ou redirigez vers celui-ci

### Étape 3 : Hébergement sur OVH

#### Option 1 : Hébergement web OVH (FTP)
1. Connectez-vous à votre espace client OVH
2. Accédez à votre hébergement web
3. Utilisez FileZilla ou le gestionnaire de fichiers OVH
4. Uploadez `index.html` et le dossier `images/` dans le dossier `www/`

#### Option 2 : Hébergement gratuit alternatif
- **Netlify** : Glissez-déposez votre dossier sur https://app.netlify.com/drop
- **Vercel** : Connectez à GitHub ou uploadez directement
- **GitHub Pages** : Gratuit avec un dépôt GitHub

### Étape 4 : Pointer le domaine

Si vous utilisez un autre hébergeur que OVH mais gardez le domaine chez OVH :
1. Dans OVH > Domaines > zelieetclement.fr > Zone DNS
2. Modifiez l'enregistrement A pour pointer vers la nouvelle IP
3. Ou ajoutez un CNAME si l'hébergeur le demande

## 🎨 Personnalisation

### Modifier les couleurs
Dans `index.html`, modifiez les variables CSS :
```css
:root {
    --color-primary: #8B2D23;      /* Rouge bordeaux */
    --color-primary-dark: #6B2219; /* Rouge foncé */
}
```

### Modifier les polices
Changez les imports Google Fonts et les variables :
```css
--font-display: 'Cormorant Garamond', Georgia, serif;
--font-body: 'Montserrat', sans-serif;
```

### Ajouter des photos
1. Ajoutez vos nouvelles images dans le dossier `images/`
2. Modifiez les balises `<img>` correspondantes dans `index.html`

## ✅ Checklist avant mise en ligne

- [ ] Images téléchargées en local
- [ ] Formulaire RSVP configuré (Formspree ou autre)
- [ ] Liens Google Maps vérifiés
- [ ] Numéro de téléphone et email corrects
- [ ] Lien cagnotte OnParticipe fonctionnel
- [ ] Site testé sur mobile et desktop

## 🔒 Avantages par rapport à Canva

1. **Propriété totale** : Le code vous appartient
2. **Pas d'abonnement** : Canva peut changer ses tarifs
3. **Performance** : Site plus léger et rapide
4. **Personnalisation** : Modifiez tout ce que vous voulez
5. **SEO** : Meilleur contrôle du référencement
6. **Hébergement libre** : Choisissez où héberger

## 📞 Support

Des questions ? Contactez zelieetclement@gmx.fr

---
*Site créé avec ❤️ pour Zélie et Clément*
