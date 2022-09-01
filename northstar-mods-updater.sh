#!/bin/bash
# Start
echo "# NorthstarMods updater. Place in the game directory and run."

    curl https://github.com/R2Northstar/NorthstarMods/archive/refs/heads/main.zip -Lo northstarmods.zip

echo "# Unzip northstar.zip and replace all files.."
    unzip -o northstarmods.zip

echo "# Remove unneeded files from NorthstarMods-main"
    cd NorthstarMods-main
    rm .gitattributes .gitignore LICENSE README.md
    rm -dr .github

echo "# Create mods directory if it doesn't exist"
    mkdir -p -- ../R2Northstar/mods

echo "# Copy the updated scripts to ../R2Northstar/mods and replace the old ones..."
    cp -r * ../R2Northstar/mods

echo "# Update done! 🐸"

echo "# Cleanup.."
    cd ..
echo "# Remove northstar.zip"
    rm northstarmods.zip
echo "# NorthstarMods-main"
    rm -dr NorthstarMods-main

echo "# End"
