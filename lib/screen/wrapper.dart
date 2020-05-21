import 'package:darpandentalhome/model/user.dart';
import 'package:darpandentalhome/screen/authenticate/authenticate.dart';
import 'package:darpandentalhome/screen/home/home_page.dart';
import 'package:darpandentalhome/screen/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if(user==null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
