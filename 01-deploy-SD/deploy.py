import subprocess, logging

DISK = '/dev/mmcblk0'
COMMANDS = [
        'umount '+DISK+'p1',
        'umount '+DISK+'p2',
        'sudo dd bs=4M of='+DISK+' if=/share/2018-04-18-raspbian-stretch-lite.img',
        'sudo mkdir /media/pi-boot',
        'sudo mount '+DISK+'p1 /media/pi-boot',
        'sudo touch '+DISK+'p1 /media/pi-boot/ssh',
        'sudo umount '+DISK+'p1',
        'sudo rmdir /media/pi-boot',
        ]

for command in COMMANDS:
    logging.debug('running command "' + command+'"')
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
    if error != None:
        logging.critical('output')
        exit(1)
