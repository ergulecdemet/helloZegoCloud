# What is that ZegoCloud

It allows you to easily create your voice chat and live video chat applications in minutes with a developer-friendly API.

# Requirements
**1.** Open an account on ZegoCloud.

**2.** Select a use case for your app: Voice & Video Calls

**3.** Write the Appid and Appsign given to you in the appropriate places in the call_page file.
# Package
```flutter pub add zego_uikit_prebuilt_call```

*zego_uikit_prebuilt_call: ^1.2.13*
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
In your project's *your_project > android > app* folder, create a proguard-rules.pro file with the following content as shown below:
```
-keep class **.zego.** { *; }
```

Add the following config code to the release part of the *your_project/android/app/build.gradle* file.
```
proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
```

for iOS:
To add permissions, open *your_project/ios/Runner/Info.plist*, and add the following code to the dict part:
```
<key>NSCameraUsageDescription</key>
<string>We require camera access to connect to a call</string>
<key>NSMicrophoneUsageDescription</key>
<string>We require microphone access to connect to a call</string>
```
SOURCE: https://docs.zegocloud.com/article/14821

# View
![Screenshot_1670867410](https://user-images.githubusercontent.com/77542723/207117982-7d90535d-1e79-4cf1-b31f-6453a6102658.png)       

