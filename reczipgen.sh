#!/bin/bash

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

while IFS= read -r line; 
    do echo "$line"
    sleep 0.05s
done <<< "$Banner"



sleep 0.1s
#   make /storage/shared/dynpargsi/images folder

echo -e "Recovery flashable zip generator"
sleep 0.1s
echo -e "\n\t\tversion 0.1\n"
echo -e "\t\tby @jayrfs\n"
echo -e "\thttps://github.com/jayrfs/RecZipGen\n"
sleep 1s
echo -e "creating input directory...\n"
mkdir -p ~/storage/shared/dynpargsi/dynamic_device_template
echo -e "downloading template.zip...\n"
cd ~/storage/shared/dynpargsi/ && curl -LJOk https://github.com/jayrfs/dynparGSI/files/7086572/dynamic_device_template.zip
echo -e "unzipping template.zip...\n"
unzip /storage/shared/dynpargsi/dynamic_device_template.zip -d /storage/shared/dynpargsi/dynamic_device_template
sleep 0.1s
echo -e "input directory created at \n\n\t/storage/shared/dynpargsi/dynamic_device_template"
echo -e "\nplease place the images there"
echo ""
sleep 0.1s
echo "done"