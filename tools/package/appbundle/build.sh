#!/bin/bash

APP_DIR="$GITHUB_WORKSPACE/VirtualXT.app"
rm -rf $APP_DIR

cp -r "$GITHUB_WORKSPACE/tools/package/appbundle/virtualxt-appbundle" $APP_DIR
mkdir -p $APP_DIR/Contents/MacOS $APP_DIR/Contents/Resources/bios $APP_DIR/Contents/Resources/boot

cp build/bin/virtualxt $APP_DIR/Contents/MacOS/
cp bios/pcxtbios.bin $APP_DIR/Contents/Resources/bios/
cp bios/GLABIOS.ROM $APP_DIR/Contents/Resources/bios/
cp bios/GLaTICK_0.8.4_AT.ROM $APP_DIR/Contents/Resources/bios/
cp bios/vxtx.bin $APP_DIR/Contents/Resources/bios/
cp bios/vgabios.bin $APP_DIR/Contents/Resources/bios/
cp boot/freedos.img $APP_DIR/Contents/Resources/boot/
cp boot/freedos_hd.img $APP_DIR/Contents/Resources/boot/
cp boot/elks.img $APP_DIR/Contents/Resources/boot/
cp tools/icon/icon.icns $APP_DIR/Contents/Resources/

YEAR=$(date +%Y)
rpl e14f19fc-199d-4fb9-b334-aed07b29a113 $YEAR $APP_DIR/Contents/Info.plist

VERSION=${VXT_VERSION}-${GITHUB_RUN_ID}
rpl e34f19fc-199d-4fb9-b334-aed07b29a173 $VERSION $APP_DIR/Contents/Info.plist
