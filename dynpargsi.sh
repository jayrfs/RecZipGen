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
#   make /storage/dynpargsi/images folder

echo -e "Twrp flashable zip generator from gsi images for dynamic partition devices"
sleep 0.1s
echo -e "\n\t\tversion 0.1\n"
echo -e "\t\tby @jayrfs\n"
echo -e "\thttps://github.com/jayrfs/dynparGSI\n"
sleep 1s
echo "creating input directory.."
echo ""
#mkdir -p ~/storage/shared/dynpargsi/input
sleep 0.1s
echo -e "input directory created at \n\n\t/storage/dynpargsi/images"
echo -e "\nplease place the images there"
echo ""
sleep 0.1s
echo "done"