import configparser

config = configparser.ConfigParser()

with open('/etc/os-release', 'r') as f:
    config_string = u'[section]\n'+f.read()

config.read_string(config_string)
print(config['section']['ID'])
print(config['section']['VERSION_ID'])

