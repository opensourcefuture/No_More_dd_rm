if [ -e /system/bin/toybox ]||[ -e /system/bin/toybox-bin ];then
    if [ -e /sdcard/Download/toybox.backup ];then
        echo "/sdcard/Download/toybox.backup found"
    else 
        if [ -e /system/bin/toybox-bin ];then
            cp /system/bin/toybox-bin /sdcard/Download/toybox.backup
        echo "/sdcard/Download/toybox.backup not found. backup system/bin/toybox-bin to /sdcard/Download/toybox.backup"
        elif [ -e /system/bin/toybox ];then
            cp /system/bin/toybox /sdcard/Download/toybox.backup
        echo "/sdcard/Download/toybox.backup not found. backup system/bin/toybox to /sdcard/Download/toybox.backup"
        fi
    fi
    echo "Backup check is done."
    echo "Start disable your dd/rm command"
    if [ -e /system/bin/toybox-bin ];then
        cp /system/bin/toybox-bin $MODPATH/system/bin/toybox-bin
    elif [ -e /system/bin/toybox ];then
        cp /system/bin/toybox $MODPATH/system/bin/toybox-bin
    fi
else 
    echo no toybox found 
    exit
fi