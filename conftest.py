import configparser, hashlib

config = configparser.ConfigParser()

#with open('/etc/os-release', 'r') as f:
#    config_string = u'[section]\n'+f.read()

#config.read_string(config_string)
#print(config['section']['ID'])
#print(config['section']['VERSION_ID'])

def calculate_hash(file_path):
    hasher = hashlib.sha256()
    BLOCKSIZE = 65536
    with open(file_path, 'rb') as afile:
        buf = afile.read(BLOCKSIZE)
        while len(buf) > 0:
            hasher.update(buf)
            buf = afile.read(BLOCKSIZE)
    return hasher.hexdigest()

if __name__ == "__main__":
    print(calculate_hash("C:\\hei-hei.txt"))