import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery. of(context). size. width,
                child: Image.asset('assets/images/Illustration.png', fit: BoxFit.contain,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Welcome to \n Darpan Dental Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 35
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: Text('We are here to serve you.')),
                  SizedBox(height: 40,),
                  Center(
                    child: MaterialButton(
                      height: 55,
                      minWidth: 230,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                      color: Color(0xff4CBBB9),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
