# Flutter layout problem

I have encountered a puzzling layout inconsistency involving the Wrap, Stack, Chip, and Positioned widgets and I am hoping that the Flutter community can help me resolve it. I have a created a simple Flutter app at <https://github.com/philipmjohnson/fluttermonarchlayout> (based on the default Counter app) that illustrates the problem.

My question: How can I get my "Badges" to lay out consistently across all platforms? 

## Expected behavior

To start, here are two images from two platforms that show the desired layout:

### Chrome

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/chrome.png">

### Monarch (iPhone 13 Pro)

This image is a screenshot from the [Monarch](https://monarchapp.io/) UI development environment:

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/monarch-iPhone13Pro.png">

## Unexpected behavior

Now, here are two images that illustrate two layout problems from the same codebase:
1. The star Icons are now incorrectly positioned within the Chip widget.
2. There is additional padding between the two "rows" of the Wrapped widgets.

### iOS Simulator (iPhone13Pro)

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/simulator-iPhone13Pro.png">

### Android simulator (Pixel 6 Pro)

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/simulator-Pixel6Pro.png">

## Suspect Code

The relevant code to create the "Badge" is in [badge_icon.dart](https://github.com/philipmjohnson/fluttermonarchlayout/blob/main/lib/badge_icon.dart). 

The code to create the wrapped list of Badges is in [wrapped_badges.dart](https://github.com/philipmjohnson/fluttermonarchlayout/blob/main/lib/wrapped_badges.dart).

## Flutter doctor

```
% flutter doctor -v
[✓] Flutter (Channel stable, 3.10.0, on macOS 13.4 22F66 darwin-arm64, locale en-US)
    • Flutter version 3.10.0 on channel stable at /Users/philipjohnson/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 84a1e904f4 (3 weeks ago), 2023-05-09 07:41:44 -0700
    • Engine revision d44b5a94c9
    • Dart version 3.0.0
    • DevTools version 2.23.1

[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.1)
    • Android SDK at /Users/philipjohnson/Library/Android/sdk/
    • Platform android-33, build-tools 33.0.1
    • Java binary at: /Applications/Android Studio.app/Contents/jre/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build 11.0.13+0-b1751.21-8125866)
    • All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS (Xcode 14.3)
    • Xcode at /Applications/Xcode-14.3.app/Contents/Developer
    • Build 14E222b
    • CocoaPods version 1.12.0

[✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

[✓] Android Studio (version 2021.3)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build 11.0.13+0-b1751.21-8125866)

[✓] IntelliJ IDEA Ultimate Edition (version 2023.1)
    • IntelliJ at /Applications/IntelliJ IDEA.app
    • Flutter plugin version 72.1.5
    • Dart plugin version 231.8109.91

[✓] Connected device (3 available)
    • iPhone 13 Pro (mobile) • BB99A11F-57E3-4600-A522-C27A31B01E80 • ios            • com.apple.CoreSimulator.SimRuntime.iOS-16-4
      (simulator)
    • macOS (desktop)        • macos                                • darwin-arm64   • macOS 13.4 22F66 darwin-arm64
    • Chrome (web)           • chrome                               • web-javascript • Google Chrome 114.0.5735.90

[✓] Network resources
    • All expected network resources are available.

• No issues found!
```
