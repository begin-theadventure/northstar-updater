echo "# Start."
echo "# Northstar updater/installer. Place in the game directory and run."

echo "# Download the latest release."
	owner_repo='R2Northstar/Northstar'; latest_version_url="$(curl -s https://api.github.com/repos/$owner_repo/releases/latest| grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d \")"; echo $latest_version_url; basename $latest_version_url ; curl -X GET $latest_version_url  -Lo northstar.zip

echo "# Unzip northstar.zip to northstar-upller.."
	unzip -o northstar.zip -d northstar-upller

echo "# Copy changed files to Titanfall2."
	cp -r * ..

echo "# Update done! 🐸"

echo "# Cleanup.."
	cd ..
echo "# Remove northstar-upller"
	rm -dr northstar-upller
echo "# Remove northstar.zip"
	rm northstar.zip

echo "# End."
