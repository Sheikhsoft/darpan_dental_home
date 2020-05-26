import 'package:darpandentalhome/services/auth.dart';
import 'package:darpandentalhome/shared/const.dart';
import 'package:darpandentalhome/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  bool loading = false;


  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
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
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            ),
            loading ? Loading() : SizedBox(height: 6,),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(25,10,20,0),
                      child: Text(
                        'Email:',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 18,
                          ),
                        )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,10,20,10),
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? "Please Enter your email" : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      cursorColor: Colors.black,
                      decoration: textInputDecoration.copyWith(hintText: 'sanjivgurung@gmail.com'),
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
                          )
                      )
                  ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,20),
                      child: TextFormField(
                        validator: (val) => val.length<6 ? "Please enter a password 6+ character" : null,
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          obscureText: true,
                          cursorColor: Colors.black,
                          decoration: textInputDecoration.copyWith(hintText: '**********')
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
              onPressed: () async {
                if(_formKey.currentState.validate()){
                  setState(() {
                    loading = true;
                  });
                  dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                  if(result==null) {
                    setState(() {
                      loading = false;
                    });
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          elevation: 1,
                          duration: Duration(milliseconds: 800),
                          backgroundColor: Colors.red[700],
                          content: Text(
                              'Error Signing In',
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
                'Sign In',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    ),
                  )
              ),
            ),
            Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      widget.toggleView();
                    },
                    child: Text(
                      'Want a new account?',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xffCE5B51),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
