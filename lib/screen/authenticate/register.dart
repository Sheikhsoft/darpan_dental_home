import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25,10,20,0),
                            child: Text(
                              'First Name:',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 15,
                                  color: Colors.blue[900]
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20,10,5,10),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: textInputDecoration.copyWith(hintText: 'Sanjiv'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,20,0),
                            child: Text(
                              'Last Name:',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 15,
                                  color: Colors.blue[900]
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5,10,20,10),
                          child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: textInputDecoration.copyWith(hintText: 'Gurung')
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25,10,20,0),
                  child: Text(
                    'Email:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: textInputDecoration.copyWith(hintText: 'sanjivgurung@gmail.com')
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25,10,20,0),
                  child: Text(
                    'Password:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: textInputDecoration.copyWith(hintText: '*******')
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25,10,20,0),
                  child: Text(
                    'Phone Number:',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15,
                        color: Colors.blue[900]
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: textInputDecoration.copyWith(hintText: '9810000001')
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
                    onTap: () {
                      widget.toggleView();
                    },
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
