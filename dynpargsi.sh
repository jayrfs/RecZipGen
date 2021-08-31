#!/bin/bash

# useless stuff

Banner=$(cat <<-END
                                    
█████╗█████╗█████╗█████╗█████╗█████╗
╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝
                                    
    ██████╗ ██╗   ██╗███╗   ██╗     
    ██╔══██╗╚██╗ ██╔╝████╗  ██║     
    ██║  ██║ ╚████╔╝ ██╔██╗ ██║     
    ██║  ██║  ╚██╔╝  ██║╚██╗██║     
    ██████╔╝   ██║   ██║ ╚████║     
    ╚═════╝    ╚═╝   ╚═╝  ╚═══╝     
                                    
    ██████╗  █████╗ ██████╗         
    ██╔══██╗██╔══██╗██╔══██╗        
    ██████╔╝███████║██████╔╝        
    ██╔═══╝ ██╔══██║██╔══██╗        
    ██║     ██║  ██║██║  ██║        
    ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝        
                                    
     ██████╗ ███████╗██╗            
    ██╔════╝ ██╔════╝██║            
    ██║  ███╗███████╗██║            
    ██║   ██║╚════██║██║            
    ╚██████╔╝███████║██║            
     ╚═════╝ ╚══════╝╚═╝            
                                    
█████╗█████╗█████╗█████╗█████╗█████╗
╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝
                                    
END
)

while IFS= read -r line; 
    do echo "$line"
    sleep 0.05s
done <<< "$Banner"



sleep 0.1s
#   make /storage/shared/dynpargsi/images folder

echo -e "Twrp flashable zip generator from gsi images for dynamic partition devices"
sleep 0.1s
echo -e "\n\t\tversion 0.1\n"
echo -e "\t\tby @jayrfs\n"
echo -e "\thttps://github.com/jayrfs/dynparGSI\n"
sleep 1s
echo -e "creating input directory...\n"
mkdir -p ~/storage/shared/dynpargsi/dynamic_device_template
echo -e "downloading template.zip...\n"
curl -sS https://github.com/jayrfs/dynparGSI/blob/main/dynamic_device_template.zip?raw=true > /storage/shared/dynpargsi/dynamic_device_template.zip
echo -e "unzipping template.zip...\n"
unzip /storage/shared/dynpargsi/dynamic_device_template.zip -d /storage/shared/dynpargsi/dynamic_device_template
sleep 0.1s
echo -e "input directory created at \n\n\t/storage/shared/dynpargsi/dynamic_device_template"
echo -e "\nplease place the images there"
echo ""
sleep 0.1s
echo "done"
