#!/bin/bash

echo "📦 install dependency..."
npm install || { echo "❌ npm install gagal"; exit 1; }

echo "📦 install pm2 secara local..."
npm install pm2 || { echo "❌ install pm2 gagal"; exit 1; }

# cari file utama bot
ENTRY_FILE=""
for file in index.js; do
  if [ -f "$file" ]; then
    ENTRY_FILE="$file"
    break
  fi
done

if [ -z "$ENTRY_FILE" ]; then
  echo "❌ gak nemu file utama (index.js)"
  exit 1
fi

echo "🚀 jalankan bot pake pm2 local..."
npx pm2 start "$ENTRY_FILE" --name wa-bot
npx pm2 save
npx pm2 startup

echo "✅ bot wa lo udah jalan!"
echo "🧼 stop: npx pm2 stop wa-bot"
echo "🚀 start: npx pm2 start wa-bot"
echo "🔁 reboot auto-start: npx pm2 save && npx pm2 startup"
