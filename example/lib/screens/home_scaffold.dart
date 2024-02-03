// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

import 'package:ui_extensions_flutter/ui_extensions_flutter.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeWidget(context),
      floatingActionButton: null,
    );
  }

  Widget homeWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Assets.images.ltmm1024x1024.image(),
          ).paddingAll(15.0).borderAll(
                Colors.red,
                borderWidth: 2.0,
              ),
          const SizedBox(height: 20),
          const Text('Welcome to the UI Extensions Flutter example app!')
              .paddingAll(3)
              .background(Colors.blue[100]!)
              .borderAll(Colors.red),
          const SizedBox(height: 20),
          const Text('Faded Text').opacity(0.5),
        ],
      ),
    );
  }
}
