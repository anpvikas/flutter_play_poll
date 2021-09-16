# Setup

# Commands
flutter packages pub run build_runner build --delete-conflicting-outputs

# UI Screenshots from application
<img src="https://github.com/anpvikas/flutter_play_poll/blob/main/Combined_Full_small.png">

# Firestore App Registration
1. Go to Firestore console
2. Add new project
3. Give name and create new project (Add google analytics)
4. Once the project is created, select android option to add an android app
5. Give android package name--> com.example.flutter_play_poll  (found under app level build.gradle file in defaultConfig {})
6. Give a nickname for the project
7. Generate SHA-1 key using:
   keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore

   Generated SHA-keys:
   SHA1: 15:91:A3:CB:55:1E:93:D3:17:26:C5:D6:60:5E:73:63:0A:1C:19:89
   SHA256: AC:96:5E:ED:3C:53:45:64:3E:C6:68:D0:67:A5:F0:6B:C7:4F:CC:55:B3:57:F6:FB:38:B9:63:B5:66:CA:BE:3B
8. Enter the SHA-1 key and click next to register the application
9. download the json file and place it in the app level build.gradle file
10. Add the suggested codes in both project level and app level build.gradle files
11. Issue Faced: Web App configuration was giving issue for which the scripts in the index.html were added (additional below firebase-firestore.js script apart from the generated configuration):
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-firestore.js"></script>
    and also the version for below was changed from 8.6.8 to 8.6.1
    <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>




# flutter_play_poll

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# flutter_play_poll

