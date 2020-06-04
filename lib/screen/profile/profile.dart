import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: 15),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70,
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.grey,
                            size: 45,
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: boxDecoration.copyWith(color: Colors.grey[200]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10,20,20,0),
                            child: Text(
                                'Sanjiv Gurung',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,

                                  ),
                                )
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10,10,20,0),
                            child: Text(
                                'Software Engineer',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                    color: Colors.grey[800]

                                  ),
                                )
                            )
                        ),
                        Divider(thickness: 0.5, height: 35, indent: 30, endIndent: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 35,),
                            Icon(Icons.email, color: Colors.redAccent,),
                            SizedBox(width: 20,),
                            Text(
                                'sanjivgurung@gmail.com',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 20,

                                  ),
                                )
                            ),
                          ],
                        ),SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 35,),
                            Icon(Icons.phone, color: Colors.green,),
                            SizedBox(width: 20,),
                            Text(
                                '9810000001',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                      fontSize: 20,

                                  ),
                                )
                            ),
                          ],
                        ),
                        Divider(thickness: 0.5,height: 35,)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    left: 15,
                    child: Container(
                      height: 100,
                      width: 162,
                      decoration: boxDecoration.copyWith(color: Color(0xffDBE5FE)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10,10,20,0),
                              child: Text(
                                  'Dental',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff4B7FFB),
                                    ),
                                  )
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10,10,20,0),
                              child: Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                        fontSize: 34,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    right: 15,
                    child: Container(
                      height: 100,
                      width: 162,
                      decoration: boxDecoration.copyWith(color: Color(0xffFFEFE1)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10,10,20,0),
                              child: Text(
                                  'Normal',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFB167)
                                    ),
                                  )
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10,10,20,0),
                              child: Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                        fontSize: 34,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 60,),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 1.1,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      padding: EdgeInsets.only(left: 20),
                      decoration: boxDecoration.copyWith(color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.book),
                          SizedBox(width: 20,),
                          Text(
                              'Terms and Policies',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[800]

                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      padding: EdgeInsets.only(left: 20),
                      decoration: boxDecoration.copyWith(color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.person),
                          SizedBox(width: 20,),
                          Text(
                              'Privacy Setting',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[800]

                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      padding: EdgeInsets.only(left: 20),
                      decoration: boxDecoration.copyWith(color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.settings),
                          SizedBox(width: 20,),
                          Text(
                              'Settings',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[800]

                                ),
                              )
                          )
                        ],
                      ),
                    )
                  ],
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
