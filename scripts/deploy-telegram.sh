#!/usr/bin/env sh
BUILD_SHA_SHORT=$(git rev-parse --short ${BUILD_SHA})
#curl -F chat_id="-1001220326034" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
#curl -F chat_id="-1001269732220" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
curl -F chat_id="-1001220326034" -F document=@"TelegramXMods-ci-${BUILD_SHA_SHORT}.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument
curl -F chat_id="-1001386574981" -F sticker="CAADBQADPQADTBCSGr060PvRNzIFAg" https://api.telegram.org/bot$BOT_TOKEN/sendSticker
curl -F chat_id="-1001386574981" -F document=@"TelegramXMods-ci-$TRAVIS_BUILD_NUMBER.apk" https://api.telegram.org/bot$BOT_TOKEN/sendDocument
#curl -F chat_id="-1001386574981" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
