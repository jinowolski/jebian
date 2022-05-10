#!/usr/bin/env python3
import configparser
import json
import os
import sys

CREDENTIALS_FILE = os.path.join(os.environ['HOME'], '.aws/credentials')

new_creds = json.loads(''.join(sys.stdin.readlines()))

config = configparser.ConfigParser()
config.read(CREDENTIALS_FILE)
config['default']['aws_access_key_id'] = new_creds['Credentials']['AccessKeyId']
config['default']['aws_secret_access_key'] = new_creds['Credentials']['SecretAccessKey']
config['default']['aws_session_token'] = new_creds['Credentials']['SessionToken']

with open(CREDENTIALS_FILE, 'w') as configfile:
    config.write(configfile)

