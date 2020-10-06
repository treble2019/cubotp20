#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:14683040:92f19738d2987ee004d450a0f703adea28965f19; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10351520:a57192e638931b10d90367919659412804fda04d EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 92f19738d2987ee004d450a0f703adea28965f19 14683040 a57192e638931b10d90367919659412804fda04d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
