import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,15,5,10),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: textInputDecoration.copyWith(hintText: 'First Name:'),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5,15,20,10),
                      child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: textInputDecoration.copyWith(hintText: 'Last Name:')
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: textInputDecoration.copyWith(hintText: 'Email:')
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: textInputDecoration.copyWith(hintText: 'Password:')
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: textInputDecoration.copyWith(hintText: 'Phone Number:')
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: MaterialButton(
                  height: 55,
                  minWidth: 230,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  color: Color(0xffCE5B51),
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Color(0xff4CBBB9),
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
