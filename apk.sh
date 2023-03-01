#!/bin/bash

# Check if the required files and directories are present in the current directory
if [ ! -f "build.gradle" ] || [ ! -f "AndroidManifest.xml" ] || [ ! -d "res" ] || [ ! -d "src" ]
then
    echo "Error: missing required files or directories for building APK."
    echo "Required files: build.gradle, AndroidManifest.xml"
    echo "Required directories: res, src"
else
    # Build the APK using the Android SDK located at /home/Android/Sdk
    /home/kali/Android/Sdk/cmdline-tools/gradle/bin/gradle assembleDebug

    # Check if the APK was successfully built
    if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]
    then
        echo "APK built successfully!"
    else
        echo "Error: APK not built."
    fi
fi

