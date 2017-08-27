#!/bin/bash

printf "****************\nInstalling Gradle\n****************\n"

GRADLE_VERSION="gradle-4.1"
GRADLE_ZIP="${GRADLE_VERSION}-bin.zip"
GRADLE_DEST="/usr/lib/gradle"

wget "https://services.gradle.org/distributions/${GRADLE_ZIP}"
unzip "${GRADLE_ZIP}"
sudo rm "${GRADLE_ZIP}"
sudo mkdir -p "${GRADLE_DEST}"
sudo mv "${GRADLE_VERSION}" "${GRADLE_DEST}/${GRADLE_VERSION}/"

