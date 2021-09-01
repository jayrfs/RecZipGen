#!/bin/bash
#cd $HOME/storage/shared/reczipgen/ && curl -LJOk https://github.com/jayrfs/reczipgen/files/7086572/dynamic_device_template.zip

# useless stuff

Banner=$(cat <<-END
                                    
                                    
█████╗█████╗█████╗█████╗█████╗█████╗
╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝
                                    
    ██████╗ ███████╗ ██████╗        
    ██╔══██╗██╔════╝██╔════╝        
    ██████╔╝█████╗  ██║             
    ██╔══██╗██╔══╝  ██║             
    ██║  ██║███████╗╚██████╗        
    ╚═╝  ╚═╝╚══════╝ ╚═════╝        
                                    
    ███████╗██╗██████╗              
    ╚══███╔╝██║██╔══██╗             
      ███╔╝ ██║██████╔╝             
     ███╔╝  ██║██╔═══╝              
    ███████╗██║██║                  
    ╚══════╝╚═╝╚═╝                  
                                    
     ██████╗ ███████╗███╗   ██╗     
    ██╔════╝ ██╔════╝████╗  ██║     
    ██║  ███╗█████╗  ██╔██╗ ██║     
    ██║   ██║██╔══╝  ██║╚██╗██║     
    ╚██████╔╝███████╗██║ ╚████║     
     ╚═════╝ ╚══════╝╚═╝  ╚═══╝     
                                                                        
█████╗█████╗█████╗█████╗█████╗█████╗
╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝
                                                                        
END
)

# define vars
DATE=$(date +"%Y%m%d-%H%M%S")
DEVICENAME=`$getprop ro.product.device`
PRODUCTNAME=`$getprop ro.build.product`

# usefull stuff
script=$(cat <<-END
assert(getprop("ro.product.device") == "$DEVICENAME" || getprop("ro.build.product") == "$PRODUCTNAME" || abort("E3004: This package is for $DEVICENAME: ; this device is " + getprop("ro.product.device") + "."););
ifelse(is_mounted("/system"), unmount("/system"));
ui_print("_______                         ");
ui_print("< hello >                       ");
ui_print(" -------                        ");
ui_print("        \   ^__^                ");
ui_print("         \  (oo)\_______        ");
ui_print("            (__)\       )\/\    ");
ui_print("                ||----w |       ");
ui_print("                ||     ||       ");
ui_print("                                ");
ui_print("                                ");
ui_print("flashable zip generated with reczipgen");
ui_print("  https://github.com/jayrfs/RecZipGen ");
ui_print("                                ");
ui_print("                                ");
ui_print("________________________________");
ui_print("zip generated on:               ");
ui_print("        $DATE");
ui_print("                                ");
assert(update_dynamic_partitions(package_extract_file("dynamic_partitions_op_list")));
package_extract_file("system.img", map_partition("system"));
ui_print("Patching vbmeta images...");
package_extract_file("vbmeta.img", "/dev/block/bootdevice/by-name/vbmeta");
set_progress(1.000000);
END
)


# .config file

defconfig=$(cat <<-END
firstlaunch=true
END
)

# print banner

while IFS= read -r line; 
    do echo "$line"
    sleep 0.05s
done <<< "$Banner"

# print version info
echo -e "\nRecovery flashable zip generator"
for i in {1..3}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
echo -e "\r    "
echo -e "\r\n\t\tversion 0.1\n"
echo -e "\t\tby @jayrfs\n"
echo -e "\thttps://github.com/jayrfs/RecZipGen\n"
sleep 1s


# check if config exists and
# make /storage/shared/reczipgen/images folder

if [ ! -f $HOME/reczipgen/dynamic_device_template.zip ]; then
    echo -e "Template.zip not found!"
    echo -e "\nAssuming first launch..."
    cd $HOME/ && mkdir -p $HOME/reczipgen/
    for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
    echo -e "\r    "
    echo -e "\nDownloading Template.zip"
    cd $HOME/reczipgen/ && curl -LJOk https://github.com/jayrfs/reczipgen/files/7086572/dynamic_device_template.zip
    echo -e "\nTemplate.zip downloaded!"
    echo -e "\nExtracting template.zip!"
    cp $HOME/reczipgen/dynamic_device_template.zip -d $HOME/reczipgen/template.zip
    mkdir -p $HOME/storage/shared/reczipgen/input
    echo -e "\rinput directory created at \n\ninternalstorage\reczipgen\input"
    echo -e "\nplease place the images there and rerun this script"
else
    echo -e "\nSearching for Template.zip file...\n"
    for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
    echo -e "\r\rTemplate.zip file found!"
    for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
    echo -e "\r\rChecking if input folder exists..."
    for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
    if [ -z "$(ls -A $HOME/storage/shared/reczipgen/input/)" ]; then
        echo -e "\r\rInput folder does not exist!"
        echo -e "\r\nCreating input folder..."
        for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
        cp $HOME/reczipgen/dynamic_device_template.zip -d $HOME/reczipgen/template.zip
        mkdir -p $HOME/storage/shared/reczipgen/input
        echo -e "\rinput directory created at \n\n'internalstorage'\'reczipgen'\'input'"
        echo -e "\nplease place the images there and rerun this script"
    else
        echo -e "\r\rInput folder found!"
        echo -e "\r\nCopying files inside input folder..."
        for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
        for FILE in $HOME/storage/shared/reczipgen/input/*; 
        do zip -mj $HOME/reczipgen/template.zip $FILE
        done
        echo -e "\r\nCopying files inside input folder..."
        for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
        echo -e "\r\nUpdating script..."
        > $HOME/reczipgen/updater-script cat <<< "$script"
        mkdir -p META-INF/com/google/android/
        cp $HOME/reczipgen/updater-script META-INF/com/google/android/updater-script
        zip -mu $HOME/reczipgen/template.zip META-INF/com/google/android/updater-script
        echo -e "\r\nExporting zip..."
        for i in {1}; do for s in / - \ \|; do printf "\r$s";sleep .1;done;done
        mv $HOME/reczipgen/template.zip $HOME/storage/shared/reczipgen/recovery-flashable-$DATE.zip
        rm -rf $HOME/storage/shared/reczipgen/input/
        echo -e "\r\nDone"
    fi
fi
echo -e "\rdone"
