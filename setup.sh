#!/bin/bash

echo "Load files with wget"

wget https://raw.githubusercontent.com/czyssrs/ConvFinQA/main/data.zip

echo "Unzip data"

unzip data.zip

cd data

echo "Checking the files are loaded"

find . -type f -exec du -h {} + | sort -h

cd ..

echo "Install Python libraries"
echo "Downgrading httpx to fix environmental clash with openai library"

pip uninstall httpx -y
pip install httpx="0.27.2"
pip install openai
pip install langchain-openai
pip install python-dotenv
pip install langdetect
pip install tiktoken
