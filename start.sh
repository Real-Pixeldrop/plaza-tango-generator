#!/bin/bash
# Lance un serveur HTTP local pour éviter les erreurs CORS
# et ouvre le navigateur automatiquement

cd "$(dirname "$0")"
echo "Serveur lancé sur http://localhost:8080"
echo "Appuie sur Ctrl+C pour arrêter"
open "http://localhost:8080/generator.html"
python3 -m http.server 8080
