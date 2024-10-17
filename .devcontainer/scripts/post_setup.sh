#!/bin/bash
sudo apt-get -y install --no-install-recommends awscli

# Install dependencies - incl. CPU version of pytorch to keep image size down
pip install --no-cache-dir certifi
echo | cat - /etc/ssl/certs/Cloudflare_CA.pem >> $(python -m certifi)
pip install --no-cache-dir -r requirements.txt --extra-index-url https://download.pytorch.org/whl/cpu

#pre-commit setup
pre-commit install

#git setup
git config --global user.email 'paul@canham.io' && git config --global user.name 'Paul Canham'