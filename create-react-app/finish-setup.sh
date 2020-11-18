#!bin/bash
set -e


TARGET_DIR=$1
COMMAND_DIR=$PWD
echo "Setting up ${TARGET_DIR}" 

if [[ -d $TARGET_DIR ]]
then 
  cp ${COMMAND_DIR}/defaults/.eslintrc.js $TARGET_DIR
  cp ${COMMAND_DIR}/defaults/tailwind.config.js $TARGET_DIR
  cp ${COMMAND_DIR}/defaults/.prettierrc $TARGET_DIR

  cd $TARGET_DIR

  mkdir src/assets
  mkdir src/assets/styles
  mv src/index.css src/assets/styles
  cp ${COMMAND_DIR}/defaults/tailwind.css src/assets/styles

  yarn add -D @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint-plugin-jest
  yarn add -D prettier eslint-config-prettier eslint-plugin-prettier
else
  echo "Cannot find target directory" 1>&2
  exit 1
fi