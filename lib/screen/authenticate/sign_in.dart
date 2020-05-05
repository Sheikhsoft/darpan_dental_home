import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery. of(context). size. width,
                child: Image.asset('assets/images/Illustration.png', fit: BoxFit.contain,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Darpan Dental Home',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,15,20,10),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: textInputDecoration.copyWith(hintText: 'Email:'),
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,15,20,20),
                        child: TextFormField(
                            obscureText: true,
                            cursorColor: Colors.black,
                            decoration: textInputDecoration.copyWith(hintText: 'Password:')
                        ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 55,
                minWidth: 230,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                color: Color(0xff4CBBB9),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                height: 55,
                minWidth: 230,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                color: Color(0xffCE5B51),
                onPressed: () {
                    widget.toggleView();
                },
                child: Text(
                  'Register',
                  style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
