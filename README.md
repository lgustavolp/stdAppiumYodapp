# stdAppiumYodapp
 
# Study Appium App (Yoda)

Sample Project Study (Yoda App) doing some tests using Appium + Robot Framework + Javascript

## Pre-requirements

* It is required to have python installed to run this project.
* It is required to have pip installed to run this project.
* It is required to have robot framework installed to run this project.
* It is required to have Node.js and npm installed to run this project.
* It is required to have UIAutomator2 installed to run this project.
* It is required to have Appium Inspector installed to run this project.

* Install [Appium Inspector](https://github.com/appium/appium-inspector) and create the variables below:
 
  * "platformName": "Android",
  * "appium:deviceName": "Android Emulator",
  * "appium:automationName": "UIAutomator2",
  * "appium:app": "C:\\QAx\\prj\\stdAppiumYodapp\\yodapp\\yodapp-beta.apk",
  * "appium:udid": "emulator-5554",
  * "autoGrantPermissions": true

## Installation

Run `npm init` (or `npm i` for the short version) to install the dev dependencies.
Run `npm i appium` (or `npm i` for the short version) to install the dev dependencies.

Then run:
```
adb devices -> See all the devices online
```
```
npx appium -> Start the Appium server
```

## Support this project

If you want to support this project, leave a ⭐.

___

This project was created by [Luiz Gustavo Lucena].
