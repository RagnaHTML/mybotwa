#!/bin/bash

echo "📦 cek dan install dependency..."
pnpm install || { echo "❌ pnpm install gagal"; exit 1; }

echo "📦 install pm2 secara local..."
pnpm add pm2 -D || { echo "❌ install pm2 gagal"; exit 1; }

# cari file utama bot (bisa index.js atau main.js)
ENTRY_FILE=""
for file in index.js main.js; do
  if [ -f "$file" ]; then
    ENTRY_FILE="$file"
    break
  fi
done

if [ -z "$ENTRY_FILE" ]; then
  echo "❌ gak nemu file utama (index.js / main.js)"
  exit 1
fi

echo "🚀 jalankan bot pake pm2 local (pnpm)..."
pnpm dlx pm2 start "$ENTRY_FILE" --name wa-bot || { echo "❌ gagal jalanin pm2"; exit 1; }
pnpm dlx pm2 save
pnpm dlx pm2 startup

echo "✅ bot wa lo udah jalan!"
echo "🧼 stop: pnpm dlx pm2 stop wa-bot"
echo "🚀 start: pnpm dlx pm2 start wa-bot"
echo "🔁 reboot auto-start: pnpm dlx pm2 save && pnpm dlx pm2 startup"
