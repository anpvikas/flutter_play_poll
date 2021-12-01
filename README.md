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

