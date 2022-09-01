#!/bin/bash
# Start
echo "# Northstar updater. Place in the game directory and run."

owner_repo='R2Northstar/Northstar'; latest_version_url="$(curl -s https://api.github.com/repos/$owner_repo/releases/latest| grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d \")"; echo $latest_version_url; basename $latest_version_url ; curl -X GET $latest_version_url  -Lo northstar.zip

echo "# Unzip northstar.zip and replace all files.."
    unzip -o northstar.zip

echo "# Update done! 🐸"

echo "# Cleanup.."
echo "# Remove northstar.zip"
    rm northstar.zip

echo "# End"
