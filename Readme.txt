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
  - chmod +x resize_images.sh
  - ./resize_sizes.sh ~/Desktop/jpgs "*.png" 800 1024 1280

##convert gif to WEBP

#Pre-requesties
#Install FFmpeg package
- brew install ffmpeg

##Steps to run the script
1. Switch to the Folder where this basc script resides.
2. Run the following commands
  - chmod +x convert_gif_to_webp.sh
  - ./convert_gif_to_webp.sh /path/to/your/folder

  P.S. Check these options as well: ffmpeg -i <input file name> -vcodec libwebp -lossless 0 -compression_level 6 -qscale 75 -y <output file name>



