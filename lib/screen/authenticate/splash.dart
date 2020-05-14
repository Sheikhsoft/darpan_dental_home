import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Welcome to \n Darpan Dental Home',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 35,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: Text(
                      'We are here to serve you.',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                      )
                    ),
                  )),
                  SizedBox(height: 60,),
                  Center(
                    child: MaterialButton(
                      height: 55,
                      minWidth: 230,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                      color: Color(0xff4CBBB9),
                      onPressed: () {},
                      child: Text(
                        'Get Started Now',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
                        )
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
