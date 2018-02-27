#!/usr/bin/env sh
#cp app/build/outputs/apk/release/app-release.apk TelegramXMods-$TRAVIS_BUILD_NUMBER.apk
curl -F chat_id="-1001269732220" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
curl -F chat_id="-1001220326034" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
curl -F chat_id="-1001220326034" -F document=@"TelegramXMods-$TRAVIS_BUILD_NUMBER.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument
curl -F chat_id="-1001386574981" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
curl -F chat_id="-1001386574981" -F document=@"TelegramXMods-$TRAVIS_BUILD_NUMBER.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument

echo $(./scripts/changelog.sh)
