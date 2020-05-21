import 'package:darpandentalhome/model/appoitment.dart';
import 'package:darpandentalhome/presentation/custom_icons.dart';
import 'package:darpandentalhome/screen/home/appointment_form.dart';
import 'package:darpandentalhome/screen/home/card_class.dart';
import 'package:darpandentalhome/services/auth.dart';
import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();

  String appointedFor;
  String appointedDoctor;

  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showAppointmentFormCallBack;
  List<Appointment> appointments= [
    Appointment(appointmentDate: '2019-12-01', appointedFor: 'Dental', reportURL: "https://www.ibm.com/downloads/cas/GJ5QVQ7X"),
    Appointment(appointmentDate: '2020-01-01', appointedFor: 'Normal Check Up', reportURL: "https://www.ada.org/~/media/ADA/Public%20Programs/Files/MPRG_Dental_Records.pdf?la=en"),
    ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showAppointmentFormCallBack = null;
  }
  void showAppointmentForm() {
    setState(() {
      _showAppointmentFormCallBack = null;
    });
    _scaffoldKey.currentState.showBottomSheet((context) {
      return Container(
        decoration: boxDecoration.copyWith(borderRadius: BorderRadius.all(
            Radius.circular(20))),
        padding: EdgeInsets.fromLTRB(10,0,10,0),
        child: SingleChildScrollView(
          child: AppointmentForm(appointedFor: appointedFor,appointedDoctor: appointedDoctor,),
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/Illustration.png')
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Darpan Dental Home',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback,color: Colors.blueAccent,),
                    title: Text(
                        'Feedback',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        )
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications_active, color: Colors.amber,),
                    title: Text(
                      'Reminder',
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  onTap: () async {
                    await _auth.signOut();
                  },
                  leading: Icon(Icons.exit_to_app,color: Colors.red,),
                  title: Text(
                    'Log Out',
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
      key: _scaffoldKey,
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10,0,0),
                  child: IconButton(
                    iconSize: 35,
                    icon: Icon(Icons.menu,color: Color(0xff4CBBB9)),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                      radius: 30,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                          'S',
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        )
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Book Appointment for:',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),
                )
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          appointedFor = "Dental";
                          appointedDoctor = "Dr. Sachin Lama";
                        });
                        showAppointmentForm();
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20)
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDBE5FE),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)
                                      ),
                                    ),
                                    child: Icon(MyCustomIcons.teeth,size: 40,color: Color(0xff4B7FFB)),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    'Dental',
                                    style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                          fontSize: 13
                                      ),
                                    )
                                  )
                                ],
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          appointedFor = "Normal Check Up";
                          appointedDoctor = "Dr. Saurab Adhikari";
                        });
                        showAppointmentForm();
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFEFE1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                        ),
                                      ),
                                      child: Icon(MyCustomIcons.heart,size: 40,color: Color(0xffFFB167),),
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      'Normal \n Check Up',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13
                                        ),
                                      )
                                    )
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Appointment History',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),
                )
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: appointments.map((appointments) {
                      setState(() {
                        number=number+1;
                      });
                      return CardClass(appointments: appointments,number: number,);
                    }
                    ).toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

