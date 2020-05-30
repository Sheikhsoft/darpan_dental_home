import 'package:darpandentalhome/services/auth.dart';
import 'package:darpandentalhome/shared/const.dart';
import 'package:darpandentalhome/shared/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String phoneNumber = '';
  bool loading = false;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  child: Text(
                    'Register',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 35,
                          fontWeight: FontWeight.w500
                        ),
                      )
                  ),
                ),
                loading ? Loading() : SizedBox(height: 6),
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
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                    ),
                                  )
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,5,10),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context).nextFocus(),
                              validator: (val) => val.isEmpty ? 'Please enter your first name' : null,
                              onChanged: (val) {
                                setState(() {
                                  firstName =val;
                                });
                              },
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
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
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,10,20,10),
                            child: TextFormField(
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                validator: (val) => val.isEmpty ? 'Please enter your last name' : null,
                                onChanged: (val) {
                                  setState(() {
                                    lastName =val;
                                  });
                                },
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
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
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      validator: (val) => val.isEmpty ? 'Please enter your Email' : null,
                      onChanged: (val) {
                        setState(() {
                          email =val;
                        });
                      },
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      decoration: textInputDecoration.copyWith(hintText: 'sanjivgurung@gmail.com')
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(25,10,20,0),
                    child: Text(
                      'Password:',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      validator: (val) => val.length < 6 ? 'Please enter a password 6+ characters' : null,
                      onChanged: (val) {
                        setState(() {
                          password =val;
                        });
                      },
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: textInputDecoration.copyWith(hintText: '*******')
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(25,10,20,0),
                    child: Text(
                      'Phone Number:',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,20,10),
                  child: TextFormField(
                      textInputAction: TextInputAction.done,
                      validator: (val) => val.length < 10 || val.length > 10 ? 'Please enter your phone number' : null,
                      onChanged: (val) {
                        setState(() {
                          phoneNumber =val;
                        });
                      },
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
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
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                        setState(() {
                          loading = true;
                        });
                        dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                        if(result == null) {
                          setState(() {
                            loading = false;
                          });
                          _scaffoldKey.currentState.showSnackBar(
                            SnackBar(
                              behavior: SnackBarBehavior.floating,
                              elevation: 0,
                              duration: Duration(milliseconds: 800),
                              backgroundColor: Colors.red[700],
                              content: Text(
                                  'Registration Declined',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    letterSpacing: 1.5
                                  ),
                                )
                              ),
                            )
                          );
                        }
                      }
                    },
                    child: Text(
                      'Register',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
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
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff4CBBB9),
                          ),
                        ),
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
