import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingBouncingGrid.square(
          inverted: true,
          size: 40.0,
          backgroundColor: Color(0xff4CBBB9),
          duration: Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}
