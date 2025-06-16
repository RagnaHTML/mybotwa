#!/bin/bash

clear
echo ""
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
echo "        ⚙ 𝘀𝘆𝘀𝘁𝗲𝗺 𝗲𝗻𝘃 𝗯𝗼𝘁 𝗶𝗻𝗶𝘁𝗶𝗮𝗹𝗶𝘇𝗮𝘁𝗶𝗼𝗻"
echo "         setup otomatis untuk project bot wa"
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
sleep 1

# ⬛ step 1: validasi dan instal dependency
echo ""
echo "📦 [1/4] memeriksa dependency project..."
echo "    └─> membaca file 'package.json'..."
sleep 1
pnpm install > /dev/null 2>&1 \
  && echo "    ✅ semua dependency berhasil di-install." \
  || { echo "    ❌ gagal install dependency via pnpm."; exit 1; }

# ⬛ step 2: setup pm2 (local dev only)
echo ""
echo "📦 [2/4] setup process manager (pm2)"
echo "    └─> memasang pm2 secara lokal (devDependency)..."
sleep 1
pnpm add pm2 -D > /dev/null 2>&1 \
  && echo "    ✅ pm2 berhasil dipasang secara lokal." \
  || { echo "    ❌ gagal install pm2."; exit 1; }

# ⬛ step 3: deteksi entry point file
echo ""
echo "🔍 [3/4] mencari file utama bot (entry file)..."
ENTRY_FILE=""
for file in index.js main.js bot.js; do
  if [ -f "$file" ]; then
    ENTRY_FILE="$file"
    echo "    ✅ ditemukan: $file"
    break
  fi
done

if [ -z "$ENTRY_FILE" ]; then
  echo "    ❌ tidak ditemukan file utama (index.js / main.js / bot.js)"
  exit 1
fi

# ⬛ step 4: recap dan next action
echo ""
echo "🚀 [4/4] environment berhasil disiapkan!"
sleep 0.8
echo ""
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
echo "         𝗣𝗥𝗢𝗝𝗘𝗖𝗧 𝗦𝗘𝗧𝗨𝗣 𝗦𝗘𝗟𝗘𝗦𝗔𝗜 ✅"
echo "     semua kebutuhan environment telah siap."
echo "     silakan jalankan bot secara manual via pm2:"
echo ""
echo "  📌 jalankan bot  :  pnpm dlx pm2 start $ENTRY_FILE --name wa-bot"
echo "  📌 stop bot      :  pnpm dlx pm2 stop wa-bot"
echo "  📌 restart bot   :  pnpm dlx pm2 restart wa-bot"
echo "  📌 simpan state  :  pnpm dlx pm2 save"
echo "  📌 auto-reboot   :  pnpm dlx pm2 startup"
echo ""
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
echo "         𝘁𝗶𝗽: pm2 save & startup untuk auto start"
echo "         𝗻𝗼𝘁𝗲: script ini  sudah siap di run 24 jam."
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"#!/bin/bash

clear
echo ""
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
echo "        ⚙ 𝘀𝘆𝘀𝘁𝗲𝗺 𝗲𝗻𝘃 𝗯𝗼𝘁 𝗶𝗻𝗶𝘁𝗶𝗮𝗹𝗶𝘇𝗮𝘁𝗶𝗼𝗻"
echo "         setup otomatis untuk project bot wa"
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
sleep 1

# ⬛ step 1: validasi dan instal dependency
echo ""
echo "📦 [1/4] memeriksa dependency project..."
echo "    └─> membaca file 'package.json'..."
sleep 1
pnpm install > /dev/null 2>&1 \
  && echo "    ✅ semua dependency berhasil di-install." \
  || { echo "    ❌ gagal install dependency via pnpm."; exit 1; }

# ⬛ step 2: setup pm2 (local dev only)
echo ""
echo "📦 [2/4] setup process manager (pm2)"
echo "    └─> memasang pm2 secara lokal (devDependency)..."
sleep 1
pnpm add pm2 -D > /dev/null 2>&1 \
  && echo "    ✅ pm2 berhasil dipasang secara lokal." \
  || { echo "    ❌ gagal install pm2."; exit 1; }

# ⬛ step 3: deteksi entry point file
echo ""
echo "🔍 [3/4] mencari file utama bot (entry file)..."
ENTRY_FILE=""
for file in index.js main.js bot.js; do
  if [ -f "$file" ]; then
    ENTRY_FILE="$file"
    echo "    ✅ ditemukan: $file"
    break
  fi
done

if [ -z "$ENTRY_FILE" ]; then
  echo "    ❌ tidak ditemukan file utama (index.js / main.js / bot.js)"
  exit 1
fi

# ⬛ step 4: recap dan next action
echo ""
echo "🚀 [4/4] environment berhasil disiapkan!"
sleep 0.8
echo ""
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
echo "         𝗣𝗥𝗢𝗝𝗘𝗖𝗧 𝗦𝗘𝗧𝗨𝗣 𝗦𝗘𝗟𝗘𝗦𝗔𝗜 ✅"
echo "     semua kebutuhan environment telah siap."
echo "     silakan jalankan bot secara manual via pm2:"
echo ""
echo "  📌 jalankan bot  :  pnpm dlx pm2 start $ENTRY_FILE --name wa-bot"
echo "  📌 stop bot      :  pnpm dlx pm2 stop wa-bot"
echo "  📌 restart bot   :  pnpm dlx pm2 restart wa-bot"
echo "  📌 simpan state  :  pnpm dlx pm2 save"
echo "  📌 auto-reboot   :  pnpm dlx pm2 startup"
echo ""
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
echo "         𝘁𝗶𝗽: pm2 save & startup untuk auto start"
echo "         𝗻𝗼𝘁𝗲: script ini  sudah siap di run 24 jam."
echo "✧━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✧"
