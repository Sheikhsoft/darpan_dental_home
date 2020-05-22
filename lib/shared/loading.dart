import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
    );
  }
}
