#!/bin/bash

REPO_URL="$1"
DIR_NAME=$(basename "https://github.com/RagnaHTML/mybotwa/new/main" .git)

if [ -z "https://github.com/RagnaHTML/mybotwa/new/main" ]; then
  echo "🚫 ᥴᥲ𝗍ᥲ𝗍! tulis link github repo-nya (contoh: https://github.com/user/botwa.git)"
  exit 1
fi

echo "🌐 cloning repo dari: https://github.com/RagnaHTML/mybotwa/new/main"
git clone "$REPO_URL" || { echo "❌ gagal cloning repo"; exit 1; }

cd "$DIR_NAME" || { echo "❌ folder nggak ditemukan"; exit 1; }

echo "📦 install dependency..."
npm install || { echo "❌ npm install gagal"; exit 1; }

echo "🚀 jalankan bot pake pm2..."
npm install -g pm2
pm2 start index.js --name wa-bot || pm2 start main.js --name wa-bot
pm2 save
pm2 startup

echo "✅ 𝖘𝖊𝖑𝖊𝖘𝖆𝖎! 𝖇𝖔𝖙 𝖜𝖆 𝖑𝖔 𝖘𝖚𝖉𝖆𝖍 𝖏𝖆𝖑𝖆𝖓 ✅"
echo "🛠 ᥙᥒ𝗍ᥙk ᥱɗі𝗍: cd $DIR_NAME"
echo "🧼 ᥙᥒ𝗍ᥙk s𝗍𝗈⍴: pm2 stop wa-bot"
echo "🚀 ᥙᥒ𝗍ᥙk s𝗍ᥲr𝗍: pm2 start wa-bot"
echo "🔁 ᥙᥒ𝗍ᥙk ᥲᥙ𝗍᥆ ᥉𝗍ᥲr𝗍 ᥙᥒ𝗍ᥙk rᥱb᥆𝗈𝗍: pm2 save && pm2 startup"
