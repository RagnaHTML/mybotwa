#!/bin/bash

REPO_URL="https://github.com/RagnaHTML/mybotwa.git"
DIR_NAME=$(basename "$REPO_URL" .git)

if [ -z "$REPO_URL" ]; then
  echo "🚫 ᥴᥲᥴᥲ𝗍! tulis link github repo-nya"
  exit 1
fi

echo "🌐 cloning repo dari: $REPO_URL"
git clone "$REPO_URL" || { echo "❌ gagal cloning repo"; exit 1; }

cd "$DIR_NAME" || { echo "❌ folder nggak ditemukan"; exit 1; }

echo "📦 install dependency..."
npm install || { echo "❌ npm install gagal"; exit 1; }

echo "📦 install pm2 secara local..."
npm install pm2 || { echo "❌ install pm2 gagal"; exit 1; }

# cari file utama bot secara otomatis
ENTRY_FILE=""
for file in index.js main.js; do
  if [ -f "$file" ]; then
    ENTRY_FILE="$file"
    break
  fi
done

if [ -z "$ENTRY_FILE" ]; then
  echo "❌ gak nemu file utama (index.js / bot.js / main.js / dll)"
  exit 1
fi

echo "🚀 jalankan bot pake pm2 local..."
npx pm2 start "$ENTRY_FILE" --name wa-bot
npx pm2 save
npx pm2 startup

echo "✅ selesai! bot wa lo udah jalan."
echo "🛠 edit: cd $DIR_NAME"
echo "🧼 stop: npx pm2 stop wa-bot"
echo "🚀 start: npx pm2 start wa-bot"
echo "🔁 auto-start saat reboot: npx pm2 save && npx pm2 startup"
