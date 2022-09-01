#!/bin/bash
# Start
echo "# Northstar updater. Place in the game directory and run."

owner_repo='R2Northstar/Northstar'; latest_version_url="$(curl -s https://api.github.com/repos/$owner_repo/releases/latest| grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d \")"; echo $latest_version_url; basename $latest_version_url ; curl -X GET $latest_version_url  -Lo northstar.zip

echo "# Unzip northstar.zip to northstar-updater.."
    unzip -o northstar.zip -d northstar-updater

echo "# Remove ns_startup_args.txt and ns_startup_args_dedi.txt in northstar-updater or move to Titanfall2 if it doesn't exist.."
    cd northstar-updater
    mv -vn ns_startup_args.txt ns_startup_args_dedi.txt ..
    rm ns_startup_args.txt ns_startup_args_dedi.txt

echo "# Copy changed files to Titanfall2."
    cp -r * ..

echo "# Update done! 🐸"

echo "# Cleanup.."
    cd ..
echo "# Remove northstar-updater"
    rm -dr northstar-updater
echo "# Remove northstar.zip"
    rm northstar.zip

echo "# End"
