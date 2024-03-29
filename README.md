# ui_extensions_flutter

- **LAST UPDATED 28-FEB-2024**

## Description

A collection of extensions on *BuildContext* and *Widget*

## Getting Started

Install

```yaml
dependencies:
  ui_extensions_flutter:
    git: https://github.com/GitHubStuff/ui_extensions_flutter.git
```

```dart
import 'package:ui_extensions_flutter/ui_extensions_flutter.dart';
```

## BuildContext

- MediaQueryData mediaQuery
- Size screenSize
- double height
- double width
- bool isKeyBoardOpen
- void hideKeyboard()
- Future<T?> showBottomSheet()
- ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar()

## Widgets

- background(Color color)
- borderAll(...)
- hide(bool state)
- opacity(double shade)
- padding(...)
- paddingAll(double value)
- paddingSymmetric({double horizontal = 0.0, double vertical = 0.0})
- removed(bool state)
- wrap(...)
- wrapAll(...)

## Finally

Be kind to each other.
