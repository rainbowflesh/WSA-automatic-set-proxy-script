# WPA-automatic-set-proxy-script

A shabby powershell script that semi-auto set up you wpa proxy to host proxy.

## Usage

### Requirements

Set [Android Debug Bridge (adb)](https://developer.android.com/studio/command-line/adb.html) to envrionment variable.

### Install && Config

### Get the script

```git
git clone https://github.com/isNijikawa/WPA-automatic-set-proxy-script.git
```

### Configure the script

Please follow the comment.

In "Boot app", the app execute path can be found from "Target" where in app's shortcut properties, copy the full text then paste the path down blow the example

### Run

Once you're configured, run the script;

The terminal windows may not close automatically if the WPA was not boot up, or close it manually when your app started.

If your host IP changed, you should rerun the script.

## TODO

+ Automatically close the terminal window

+ Background process

+ Listen to the network change

+ Fully automatic set up

+ Text user interface

+ Intergrate with sideload script
