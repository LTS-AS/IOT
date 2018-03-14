# IOT
This is code is written for IOT products at LTS AS. All products are based on Ubuntu.
State: Alpha

## Deployment instructions
- sudo git clone https://github.com/LTS-AS/IOT.git
- Change parameters in config/init.sh for the spesific device
- sudo sh IOT/src/deploy.sh
- copy the device info JSON to the device register

## TODO spesific to Raspberry PIs
- [ ] Deploy Raspbian OS to SD-card
- [ ] Trigg deployment when SD-card is inserted
- [ ] Inject empty SSH-file to boot partition
- [ ] Inject administrator keys
- [ ] Force SSH-users to use keys
- [ ] Inject device name to /etc/hosts and /etc/hostname 

##
- [ ] Find new pi on the network
- [ ] Update OS
- [ ] Install nessesary packages
- [ ] Enable startup-script for application
- [ ] Reboot
