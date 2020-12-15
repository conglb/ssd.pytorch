#!/bin/bash
# Ellis Brown

start=`date +%s`

# handle optional download dir
if [ -z "$1" ]
  then
    # navigate to ~/data
    echo "navigating to ~/data/ ..." 
    mkdir -p ~/data
    cd ~/data/
  else
    # check if is valid directory
    if [ ! -d $1 ]; then
        echo $1 "is not a valid directory"
        exit 0
    fi
    echo "navigating to" $1 "..."
    cd $1
fi

echo "Downloading VOClite trainval ..."
# Download the data.
git clone https://github.com/conglb/voclite.git
echo "Done downloading."

end=`date +%s`
runtime=$((end-start))

echo "Completed in" $runtime "seconds"