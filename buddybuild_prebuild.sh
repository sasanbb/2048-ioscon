#!/usr/bin/env bash

echo "=========== Checking if fastlane is installed =========="
if ! which fastlane >/dev/null; then
	echo "Installing fastlane..."
    echo password | sudo -S gem install fastlane
else
	echo "Updating fastlane..."
	echo password | sudo -S gem update fastlane
fi

echo "=========== Checking if imagemagick is installed =========="
if ! which imagemagick >/dev/null; then
	echo "Installing imagemagick..."
    brew install imagemagick
else
	echo "Updating imagemagick..."
	brew update imagemagick
fi

echo "=========== Upgrading Brew OpenSSL =========="
brew upgrade openssl

echo "Cleaning up gems"
gem cleanup

echo "Running snapshot and Deliver..."
fastlane screenshots
