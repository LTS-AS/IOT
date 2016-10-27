#This file does not belong here. I do not know where to put it. It updates the authorized_keys file from the key-management repo.
git pull https://github.com/LTS-AS/IOT.git
git remote add upstream https://github.com/LTS-AS/key-management.git
git checkout upstream/master config/authorized_keys
git commit -m "updated upstream keyfile"
git push
