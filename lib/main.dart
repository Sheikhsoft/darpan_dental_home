import 'package:darpandentalhome/screen/wrapper.dart';
import 'package:darpandentalhome/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
  home: Main(),
  debugShowCheckedModeBanner: false,

));

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: Wrapper(),
      ),
    );
  }
}
