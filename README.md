<!-- header section -->
<p align="center">
  <span><b>Flutter -  Location Service 🗺📍</b></span><br/>
</p>
<!-- header section END -->

<br/>

<!-- show case/gif section -->

<!-- show case/gif section END -->

<br/>

<!-- about app and course section -->

## About this app 🗣

This app was developed from the tutorial [Easy Flutter Location Service for Realtime Updates in Provider](https://www.youtube.com/watch?v=UdBUe_NP-BI&list=PLdTodMosi-BwEwlzjN6EyS1vwGXFo-UlK&index=6) by [Dane Mackier (Filledstacks)](https://www.filledstacks.com/).<br/><br/>
This app show how create a location service in Flutter.

## Attention 🚨

If you have this error: `Plugin project :location_web not found. Please update settings.gradle.`, on android build after install `localtion` plugin, do this follows steps:

- open the [file](https://github.com/samuelematias/location_service/blob/main/android/settings.gradle) `settings.gradle` and update the file with this code bellow:

  ```gradle

  def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()

  def plugins = new Properties()
  def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')
  if (pluginsFile.exists()) {
  pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }
  }

  plugins.each { name, path ->
  def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
  include ":$name"
      project(":$name").projectDir = pluginDirectory
  }

  ```

  > Note: This will create a `.flutter-plugin` file which will have the plugin and its path.

  > More about, check this [link](https://stackoverflow.com/questions/62348554/plugin-project-location-web-not-found-please-update-settings-gradle-how-do-i).

## Tech Stack 👩🏾‍💻

- [Dart](https://dart.dev/)
- [Flutter](https://flutter.dev/)

## Plugins 📟

- [provider](https://pub.dev/packages/provider)
- [location](https://pub.dev/packages/location)

<!-- about app and course section END -->
