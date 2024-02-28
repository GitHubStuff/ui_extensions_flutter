import 'package:flutter/material.dart';

extension BuildContextExtension<T> on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get screenSize => mediaQuery.size;
  double get height => screenSize.height;
  double get width => screenSize.width;

  bool get isKeyBoardOpen => mediaQuery.viewInsets.bottom > 0;

  void hideKeyboard() => FocusScope.of(this).requestFocus(FocusNode());

  Future<T?> showBottomSheet(
    Widget child, {
    bool isScrollControlled = true,
    Color? backgroundColor,
    Color? barrierColor,
  }) =>
      showModalBottomSheet<T>(
        context: this,
        barrierColor: barrierColor,
        isScrollControlled: isScrollControlled,
        backgroundColor: backgroundColor,
        builder: (context) => Wrap(children: [child]),
      );

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
          String message) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
        ),
      );
}
