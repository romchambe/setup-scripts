#!bin/bash
set -e


TARGET_DIR=$1
COMMAND_DIR=$PWD
echo "Setting up ${TARGET_DIR}" 

if [[ -d $TARGET_DIR ]]
then 
  cp ${COMMAND_DIR}/.eslintrc.js $TARGET_DIR
  cp ${COMMAND_DIR}/tailwind.config.js $TARGET_DIR

  cd $TARGET_DIR
  
else
  echo "Cannot find target directory" 1>&2
  exit 1
fi