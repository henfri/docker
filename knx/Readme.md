## Configuration of Smarthome.py
Create a folder to store your configuration files, e.g. /mnt2/RockOn_Configs/config/smarthomeconfig/
Mandatory files/folders:
./etc  (your smarthome.py configuration)
./items (your smarthome.py items)
./var  (logfiles etc)

You can use the sample configuration from the github (sample_config/smarthomeconfig/etc/plugin.conf)
Edit the name/IP of the knx-interface in ./etc/plugin.conf in the knx section
If you use custom plugins, add them as shown in the example. Also you can pass devices from /dev/ to the container.

## Configuration of KNXD
Change the commandline of knxd in the docker-compose.yml to match your situation. If you use a USB device, adopt the configuration from OWFS (see below) do pass the Device into the container


## Configuration of OWFS
Change the commandline Argument to owfs in docker-compose.yml (under command:)
Pass your hardware to the docker container as in the example.
To make sure that your device does always have the same name on your host, please use UDEV rules (here /dev/myPBM)

owfs:
 build: ./owfs/.
 volumes:
  - /dev/myPBM:/dev/containerPBM
 command: /usr/sbin/owserver -p 0.0.0.0:4304 -uall -uscan --foreground --pbm=/dev/containerPBM 
 restart: always
 privileged: true
            
            
## Configuration of smartvisu
create a folder for your smartvisu configuration, e.g. /mnt2/RockOn_Configs/config/smartvisuconfig/
I am still using the old png Icons and store them in  ./smartvisuconfig/icons
I also use the new google-calender plugin. So I pass it in ./smartvisuconfig/lib
My pages are stored ./smartvisuconfig/pages/friedel. Adopt this to your path in the docker-compose.yml
            