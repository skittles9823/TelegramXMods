#!/usr/bin/env sh
cp app/build/outputs/apk/debug/app-debug.apk TelegramXMods-$TRAVIS_BUILD_NUMBER.apk

 
curl -F chat_id="427673272" -F document=@"TelegramXMods-$TRAVIS_BUILD_NUMBER.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument

curl -F chat_id="-1001220326034" -F document=@"TelegramXMods-$TRAVIS_BUILD_NUMBER.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument

curl -F chat_id="-1386574981" -F document=@"TelegramXMods-$TRAVIS_BUILD_NUMBER.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument

curl -F chat_id="-1386574981" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
 
 
