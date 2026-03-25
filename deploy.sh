#!/bin/bash
echo "🚀 RetailMind Deploy wird gestartet..."
cd "$(dirname "$0")"

# Check if git is initialized
if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/katsou93/retailmind-website.git
fi

git add -A
git commit -m "Update: RetailMind website $(date '+%Y-%m-%d %H:%M')"
git branch -M main
git push -u origin main --force

echo ""
echo "✅ Fertig! Vercel deployed automatisch in ~30 Sekunden."
echo "🌐 Vorschau: https://retailmind-website.vercel.app"
