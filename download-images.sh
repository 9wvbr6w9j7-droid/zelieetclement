#!/bin/bash

# Script pour télécharger toutes les images du site Canva
# Exécuter ce script dans le dossier du site

mkdir -p images

echo "Téléchargement des images..."

# Images principales
curl -o images/hero.jpg "https://zelieetclement.fr/_assets/media/4121a9d5c75ed8f21294fd775b588c86.jpg"
curl -o images/rsvp.jpg "https://zelieetclement.fr/_assets/media/d19658f9654f54c3244a40e4522b7ac8.jpg"
curl -o images/grand-jour.jpg "https://zelieetclement.fr/_assets/media/0734dc9ce10e419780683c330ab76b4b.jpg"
curl -o images/cagnotte.jpg "https://zelieetclement.fr/_assets/media/f50b0167e1f32d9a6fa04cf6a5f73e4d.jpg"

# Galerie photos
curl -o images/gallery-1.jpg "https://zelieetclement.fr/_assets/media/8f22dd71b752be08b676e4e9f1a04403.jpg"
curl -o images/gallery-2.jpg "https://zelieetclement.fr/_assets/media/adc82f3bad8db791cc29ceae7806de37.jpg"
curl -o images/gallery-3.jpg "https://zelieetclement.fr/_assets/media/637c78a0ef514195d37fdb92ed95d437.jpg"
curl -o images/gallery-4.jpg "https://zelieetclement.fr/_assets/media/3cbfc1ac8cf5be1f8d5e04ded90e06fb.jpg"
curl -o images/gallery-5.jpg "https://zelieetclement.fr/_assets/media/f2a4f29dbc4040fc22ceb5f84e1f6c41.jpg"

# Illustration danseurs
curl -o images/danseurs.png "https://zelieetclement.fr/_assets/media/7815bbb7be97d2ad13015e3f8fd35e5b.png"

echo "✓ Téléchargement terminé !"
echo ""
echo "N'oubliez pas de mettre à jour les chemins dans index.html"
echo "Remplacez les URLs https://zelieetclement.fr/_assets/media/... par images/..."
