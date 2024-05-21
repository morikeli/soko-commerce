# Soko commerce

## Demo
![flutter_01](https://github.com/morikeli/soko-commerce/assets/78599959/18a31683-11bf-4cce-aada-362e01ade852)

## Overview
Soko commerce is an online shopping mobile application built with Flutter. The app runs on iOS and Android devices. Users can login, signup and view items in stock on their homepage.

## User instructions
In the mobile app, a user can:
    
1. view signup.
2. view login.
3. view products in stock.

## Developer instructions
---
**NOTE**: 
* To run this project, you **MUST** install Flutter SDK on your machine. Refer to [Flutter's documentation](https://docs.flutter.dev/get-started/install) and follow a step-by-step guide on how you can install Flutter SDK on your OS.

* Make sure you have installed Android Studio or a text editor of your choice - VS Code or XCode.

* Make sure your machine supports virtualization - required to run an emulator. If it doesn't, don't worry, you can install `scrcpy` on your machine or use Android Studio's `mirror device` feature.

**Scrcpy Installation guide** 
* [Install scrcpy on Windows](https://github.com/Genymobile/scrcpy/blob/master/doc/windows.md)
* [Install scrcpy on Linux](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md)
* [Install scrcpy on MacOS](https://github.com/Genymobile/scrcpy/blob/master/doc/macos.md)

---

#### Installation guide for developers

1. Git clone
Clone this repository by opening your terminal/CMD and change the current working directory to Desktop - use `cd Desktop` command.
```bash
    $ cd Desktop
    $ git clone https://github.com/morikeli/soko-commerce.git
```

2. Open the cloned repository on your text editor and run this command:
```bash
    $ flutter run
```
3. Make sure you have a very strong internet connection so that the necessary gradle files can be downloaded. These files are necessary to build the project `apk` file.

---
**Keep in mind**:
* When building the application for the first time, it may take 10 - 15 minutes to finish the installation and build process.
* When running the application using the `flutter run` command, it may take atleast a minute to install the build files on a physical device.
---


## Contributor expectations
Incase of a bug or you wish to make an update create a new branch using git command `git checkout -b <name of your branch>` and create a pull request. Wait for review.

Don't forget to star the repo 🌟😉
