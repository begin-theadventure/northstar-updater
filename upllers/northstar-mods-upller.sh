echo "# Start."
echo "# R5Reloaded git scripts updater/installer."

echo "# Download the scripts."
    	curl https://github.com/Mauler125/scripts_r5/archive/refs/heads/S3_N1094.zip -Lo scripts.zip

echo "# Unzip the scripts."
    	unzip -o scripts.zip

echo "# Create a scripts directory if it doesn't exist."
    	mkdir -p -- ../platform/scripts

echo "# Replace the scripts with new ones."
    	cd scripts_r5-S3_N1094
    	cp -r * ../platform/scripts

echo "# Update done! 🐸"

echo "# Cleanup."
    	cd ..
echo "# Remove scripts.zip."
    	rm scripts.zip
echo "# Remove scripts_r5-S3_N1094 folder."
    	rm -dr scripts_r5-S3_N1094

echo "# End."
