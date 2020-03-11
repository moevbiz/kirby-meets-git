#!/bin/bash

if (( "$#" != 1 )) 
then
    echo "Please provide a folder name."
exit 1
fi

FOLDERNAME=$1
GREEN='\033[01;32m'
NONE='\033[00m'

# clone kirby plainkit into project folder
git clone https://github.com/getkirby/plainkit.git $FOLDERNAME

echo "Done cloning into $FOLDERNAME"

# navigate to the project folder
cd $FOLDERNAME

# remove the kirby directory as it will be replaced in the next step
rm -R kirby
git add kirby

# install the submodule
git submodule add https://github.com/getkirby/kirby.git kirby

# commit the changes
git commit -m "Setup Kirby as a submodule"

echo "Kirby installed as submodule"

# create update.sh file
cat << EOF > update.sh
#!/bin/bash

# change to the kirby directory
cd "$(dirname "$0")/kirby"

# update to the latest version
git checkout master
git pull

# change back into the main project folder
cd ..

# add the updated Kirby submodule and commit
git add kirby
git commit -m "Update Kirby"
EOF

# make executable
chmod +x update.sh

# commit the changes
git add update.sh
git commit -m "Create update script"

echo "${GREEN}All done :~) You can navigate to $FOLDERNAME and run ./update.sh to update Kirby.${NONE}"

tput sgr0
