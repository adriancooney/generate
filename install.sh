#!/bin/bash

#Create the asset directory in $HOME/.generate
assetDirectory=".generate"
projectsDirectory="projects"

if [ ! -d "$HOME/.generate" ] || [ "$1" = "-f" ]
then

 if [ "$1" = "-f" ]
 then
    rm -r "$HOME/$assetDirectory"
 fi
 
 echo "Creating $assetDirectory directory" 
 mkdir "$HOME/$assetDirectory"
 echo "Copying project files"
 cp -Rf "$projectsDirectory" "$HOME/$assetDirectory/$projectsDirectory"

else
 echo "Directory .generate already created. Use -f to force install."
fi
