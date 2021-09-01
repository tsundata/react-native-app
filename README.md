# Flow chat app

A Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Protobuf

```shell
# install
dart pub global activate protoc_plugin

# usage
protoc -I=lib/model/pb --dart_out=lib/model/pb lib/model/pb/*.proto
```

## code

```shell
# Generating
flutter pub run build_runner build
# Watch
flutter pub run build_runner serve --delete-conflicting-outputs
```
