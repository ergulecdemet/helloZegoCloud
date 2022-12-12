# What is that ZegoCloud

It allows you to easily create your voice chat and live video chat applications in minutes with a developer-friendly API.

# Permissions

Don't forget to give permissions.
You will need to open the your_project/android/app/build.gradle file, and modify the compileSdkVersion to 33.

Open the file your_project/app/src/main/AndroidManifest.xml, and add the following code:
```
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_PHONE_STATE" />
<uses-permission android:name="android.permission.WAKE_LOCK" />
```
In your project's your_project > android > app folder, create a proguard-rules.pro file with the following content as shown below:
-keep class **.zego.** { *; }

Add the following config code to the release part of the your_project/android/app/build.gradle file.
```
proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
```

for iOS:
To add permissions, open your_project/ios/Runner/Info.plist, and add the following code to the dict part:
```
<key>NSCameraUsageDescription</key>
<string>We require camera access to connect to a call</string>
<key>NSMicrophoneUsageDescription</key>
<string>We require microphone access to connect to a call</string>
```
SOURCE: https://docs.zegocloud.com/article/14821
