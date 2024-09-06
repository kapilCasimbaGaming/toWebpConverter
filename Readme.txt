## convert_to_webp.sh
## Convert all the JPG and PNG files to WEBP 
## Including files in Sub-Folders / Directories

# Pre-requesties
# Install cwebp on your mac using Homebrew. Run the below command:
  - brew install webp

##Steps to run the script
1. Switch to the Folder where this basc script resides.
2. Run the following commands from terminal: 
  - chmod +x convert_to_webp.sh
  - ./convert_to_webp.sh /path/to/your/jpg/files
  (Example: of path, ~/desktop/jpgs, means JPGS folder at DESKTOP)


## resize_images.sh
## Resize the images on the basis of extention or particular files

# Pre-requesties
# Install imagemagick on your mac system using Homebrew. Command:
 - brew install imagemagick

##Steps to run the script
1. Switch to the Folder where this basc script resides.
2. Run the following command from terminal. Command has 3 parameters, <path>, <fileName or image extention>, sizes (can define multiple sizes with space)
- ./resize_sizes.sh ~/Desktop/jpgs "*.png" 800 1024 1280
