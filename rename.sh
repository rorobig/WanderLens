# Directory containing the images
DIR="gallery/archive/g10"

# Counter for image names
counter=1

# Loop through all image files in the directory
for file in "$DIR"/*.{JPG,JPEG,png,gif,bmp}; do
    # Check if the file exists (in case there are no matching files)
    if [ -e "$file" ]; then
        echo $file
        # Get the file extension
        extension="${file##*.}"
        # Construct the new file name
        new_name="img${counter}.${extension}"
        # Rename the file
        mv "$file" "$DIR/$new_name"
        # Increment the counter
        ((counter++))
    fi
done

echo "Renaming completed!"