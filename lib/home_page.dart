import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koenigsegg_web/mobile_screen_view.dart';
import 'package:koenigsegg_web/tab_screen_view.dart';
import 'package:koenigsegg_web/web_screen_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            return WebScreenView();
          } else if (constraints.maxWidth >= 600) {

            return TabScreenView();
          } else {
            // Mobile view
            return MobileScreenView();
          }
        },
      ),
    );
  }
}
