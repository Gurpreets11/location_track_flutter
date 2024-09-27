# location_track_fapp

A new Flutter project which is used to track the user location.

First we will get the user current location and display it on home screen.

after that we can display that location on google map.


Here are some steps that we need to do.

First add location permission in AndroidManifest.xml file

   <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>


To show map in application, you need to add your key in AndroidManifest file  

    <application>  
        .
        .
        .  


        <meta-data android:name="com.google.android.geo.API_KEY"
            android:value="YOUR_ANDROID_API_KEY_HERE"/>

    </application> tag






## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
