#!/bin/sh

# Atom is a hackable code editor for the 21st Century
# https://atom.io

# Download and install Atom text editor
URL_ATOM="https://atom.io/download/deb"
cd ~/Downloads
wget -O "atom-amd64.deb" $URL_ATOM
sudo dpkg -i atom-amd64.deb

# Install useful packages/extensions
# Note some packages may need extra setup steps
# and dependencies (not always listed here)

# Languages
apm install language-r language-xml language-pfm language-dot 

# Link to respective languages
# Python PEP8
pip install pep8
# R: install.packages("lintr")
# XML
sudo apt-get install libxml2-utils

# Code helpers
apm install linter linter-shellcheck linter-csslint linter-tidy linter-jsonlint linter-chktex \
linter-lintr linter-markdown linter-pep8 linter-xmllint linter-js-yaml minimap-linter

# Interact with terminal
apm install atom-terminal

# Markdown
apm install markdown-mindmap markdown-folder markdown-writer

# Remove distractions when writing
apm install typewriter zen

# General writing tools
apm install wordcount highlight-selected minimap minimap-codeglance autocomplete-paths linter-write-good

# Themes
apm install pen-paper-coffee-syntax

# Insert citations
apm install zotero-citations autocomplete-bibtex

# View compiled documents/features within atom
apm install pdf-view preview-inline

# Diagrams
apm install graphviz-preview

