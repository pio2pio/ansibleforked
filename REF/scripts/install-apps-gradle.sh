#!/bin/bash

printf "****************\nInstalling Gradle\n****************\n"

GRADLE_DEST="/usr/lib/gradle"
declare -a GRADLE_VERSIONS=( "gradle-3.3" "gradle-4.1" )

for GRADLE_VERSION in "${GRADLE_VERSIONS[@]}"
do
  GRADLE_ZIP="${GRADLE_VERSION}-bin.zip"
  wget "https://services.gradle.org/distributions/${GRADLE_ZIP}"
  unzip "${GRADLE_ZIP}"
  sudo rm "${GRADLE_ZIP}"
  sudo mkdir -p "${GRADLE_DEST}"
  sudo mv "${GRADLE_VERSION}" "${GRADLE_DEST}/${GRADLE_VERSION}/"
done

