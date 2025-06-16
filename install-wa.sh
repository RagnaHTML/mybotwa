#!/bin/bash

clear
echo ""
echo "╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo " 🚀  𝐏𝐑𝐎𝐉𝐄𝐂𝐓 𝐈𝐍𝐈𝐓 - 𝐁𝐎𝐓 𝐖𝐇𝐀𝐓𝐒𝐀𝐏𝐏 𝐀𝐔𝐓𝐎𝐌𝐀𝐓𝐈𝐎𝐍     "
echo "        crafted with ❤️ by bella devtools                                       "
echo "╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
sleep 0.8

echo ""
echo "📦 [1/6] memverifikasi environment pengembangan..."
echo "└─> memastikan runtime minimum tersedia..."
sleep 0.6
command -v node >/dev/null 2>&1 || { echo "❌ node.js tidak ditemukan."; exit 1; }
command -v pnpm >/dev/null 2>&1 || { echo "❌ pnpm belum terpasang."; exit 1; }
echo "✅ node.js ditemukan → $(node -v)"
echo "✅ pnpm tersedia     → v$(pnpm -v)"
sleep 0.5

echo ""
echo "📦 [2/6] memeriksa dependency project..."
echo "└─> membaca file 'package.json'..."
sleep 0.6
[ ! -f package.json ] && { echo "❌ package.json tidak ditemukan."; exit 1; }
echo "📚 menginstall seluruh dependency..."
pnpm install > /dev/null 2>&1 \
  && echo "✅ dependency berhasil di-install." \
  || { echo "❌ gagal install dependency."; exit 1; }

echo ""
echo "📦 [3/6] memasang process manager (pm2)..."
pnpm add -D pm2 > /dev/null 2>&1 \
  && echo "✅ pm2 berhasil dipasang (devDependencies)" \
  || { echo "❌ gagal memasang pm2."; exit 1; }

echo ""
echo "🔎 [4/6] mendeteksi file utama project..."
ENTRY_FILE=""
for file in index.js main.js bot.js src/index.js; do
  if [ -f "$file" ]; then
    ENTRY_FILE="$file"
    echo "✅ ditemukan: '$ENTRY_FILE'"
    break
  fi
done
[ -z "$ENTRY_FILE" ] && { echo "❌ tidak ada file entry point ditemukan."; exit 1; }

echo ""
echo "📂 [5/6] memverifikasi struktur direktori..."
[ -d src ] && echo "📁 folder 'src/' ✔️" || echo "⚠️ folder 'src/' tidak ditemukan (opsional)"
[ -d node_modules ] && echo "📁 node_modules ✔️" || echo "⚠️ folder belum keinstall?"

echo ""
echo "🎉 [6/6] setup selesai!"
sleep 0.5
echo ""
echo "╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "  ✅ 𝐒𝐄𝐓𝐔𝐏 𝐁𝐎𝐓 𝐖𝐇𝐀𝐓𝐒𝐀𝐏𝐏 𝐁𝐄𝐑𝐇𝐀𝐒𝐈𝐋       "
echo "╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo ""
echo "╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo "🔥 𝐁𝐄𝐋𝐋𝐀 𝐒𝐈𝐀𝐏 𝐃𝐈𝐆𝐔𝐍𝐀𝐊𝐀𝐍, 𝐔𝐍𝐓𝐔𝐊 🔥         "
echo "                                                                                  "
echo "❁ ᴍᴇɴɢʜᴀᴅɪʀᴋᴀɴ ʙᴏᴛ ᴡʜᴀᴛꜱᴀᴘᴘ ʏᴀɴɢ sᴛᴀʙɪʟ     "
echo "❁ ᴘᴇɴɢᴏʟᴀʜᴀɴ ᴘᴇʀɪɴᴛᴀʜ ᴄᴇᴘᴀᴛ & ᴀᴋᴜʀᴀᴛ            "
echo "❁ ᴘᴇɴᴅᴜᴋᴜɴɢ ᴍᴏᴅᴜʟᴇ ᴄᴜsᴛᴏᴍ & ᴀᴜᴛᴏ-ʀᴜɴ          "
echo "❁ ᴋʟᴀʀɪꜰɪᴋᴀꜱɪ ʟᴏɢ ʏᴀɴɢ ᴛᴇʀsᴛʀᴜᴋᴛᴜʀ                   "
echo "❁ sɪᴀᴘ ᴅɪᴘᴀᴋᴀɪ ᴊᴀɴɢᴋᴀ ᴘᴀɴᴊᴀɴɢ 📦                       "
echo "                                                                                    "
echo "✪ ᴅɪʀᴀɴᴄᴀɴɢ ᴅᴇɴɢᴀɴ sᴛᴀɴᴅᴀʀ ᴘʀᴏᴅᴜᴋsɪᴋ              "
echo "✪ ʟᴀʏᴀᴋ ᴅɪᴊᴀᴅɪᴋᴀɴ ᴘʀᴏᴊᴇᴋ ᴊᴀɴɢᴋᴀ ᴘᴀɴᴊᴀɴɢ          "
echo "✪ ᴏᴛᴏᴍᴀᴛɪs ʀᴇʟᴏᴀᴅ & ᴋᴏɴꜰɪɢᴜʀᴀsɪ sᴛᴀᴛɪs               "
echo "╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo ""
echo "𓅯 𝙭͢𝙚𝙤𝙣 𝙧͢𝙖𝙙𝙚𝙤𝙣... "
echo ""
echo "╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
