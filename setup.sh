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

pip install chromadb
pip install openai
pip install langchain-openai
pip install python-dotenv
pip install langdetect

