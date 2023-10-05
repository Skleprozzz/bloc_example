#!/bin/bash

ROOT=$PWD
BUILD_TYPE=$1
FLUTTER_VERSION="3.10.1"

LAST_SKSL_FLUTTER_VERSION="3.10.1"

RED_COLOR='\033[0;31m'
GREEN_COLOR='\033[0;32m'
YELLOW_COLOR='\033[1;33m'
ORANGE_COLOR='\033[0;33m'
NO_COLOR='\033[0m'
SPACER='----------------------------------------------------------------------'

echo $SPACER

function checking_flutter_version {
  cd $(dirname $(which flutter)) && cd ..

  flutter_version=$(cat version)
  printf "${ORANGE_COLOR}flutter version: ${GREEN_COLOR}$flutter_version${NO_COLOR}\n"
  if ! [[ $flutter_version == $FLUTTER_VERSION ]]; then
    printf "${RED_COLOR}wrong flutter version ($flutter_version). Version must be: $FLUTTER_VERSION${NO_COLOR}\n"
    exit 1;
  fi
  if ! [[ $flutter_version == $LAST_SKSL_FLUTTER_VERSION ]]; then
    printf "${RED_COLOR}SKSL must be regenerated for new flutter version ($flutter_version). Version for SKLS: $LAST_SKSL_FLUTTER_VERSION${NO_COLOR}\n"
    exit 1;
  fi
  cd $ROOT
}

function build {
  if [ -n "$BUILD_TYPE" ]; then
    printf "${ORANGE_COLOR}you choose build app ${NO_COLOR}\n"
  else
    printf "${ORANGE_COLOR}finish set config for app type: ${GREEN_COLOR}$APP_TYPE ${NO_COLOR}\n"
    echo $SPACER
    exit 0
  fi
  printf "${ORANGE_COLOR}start analyze${NO_COLOR}\n"
  flutter analyze
  printf "${ORANGE_COLOR}finish analyze${NO_COLOR}\n"

  printf "${ORANGE_COLOR}start build codegen${NO_COLOR}\n"
  flutter packages pub run build_runner build --delete-conflicting-outputs
  flutter format -l 120 .
  printf "${ORANGE_COLOR}finish build codegen${NO_COLOR}\n"

  printf "${ORANGE_COLOR}start build android${NO_COLOR}\n"
  flutter build apk --release
  printf "${ORANGE_COLOR}finish build android${NO_COLOR}\n"

  printf "${ORANGE_COLOR}start replacing android apk${NO_COLOR}\n"
  cp -Rf $ROOT/build/app/outputs/apk/release/app-release.apk $ROOT/release/$APP_TYPE.apk
  printf "${ORANGE_COLOR}finish replacing android apk${NO_COLOR}\n"

  printf "${ORANGE_COLOR}finish build $APP_TYPE app${NO_COLOR}\n"

  echo $SPACER
}

# call functions
# checking_flutter_version;
# build;
# dart pub get
