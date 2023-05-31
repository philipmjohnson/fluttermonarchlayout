# Flutter layout problem

I have encountered a puzzling layout inconsistency involving the Wrap, Stack, Chip, and Positioned widgets and I am hoping that the Flutter community can help me resolve it. I have a created a simple Flutter app at <https://github.com/philipmjohnson/fluttermonarchlayout> that illustrates the problem.

## Expected behavior

To start, here are two images that show the desired layout:

### Chrome

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/chrome.png">

### Monarch (iPhone 13 Pro)

This image is a screenshot from the [Monarch](https://monarchapp.io/) UI development environment:

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/monarch-iPhone13Pro.png">

## Unexpected behavior

Now, here are two images that show two layout problems from the same codebase:
1. The star Icons are now incorrectly positioned within the Chip widget.
2. There is additional padding between the two "rows" of the Wrapped widgets.

### iOS Simulator (iPhone13Pro)

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/simulator-iPhone13Pro.png">

### Android simulator (Pixel 6 Pro)

<img width="600px"  src="https://raw.githubusercontent.com/philipmjohnson/fluttermonarchlayout/main/images/simulator-Pixel6Pro.png">
