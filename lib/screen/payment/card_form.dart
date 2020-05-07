import 'package:darpandentalhome/shared/const.dart';
import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(25,10,20,0),
              child: Text(
                'Card Number:',
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
              decoration: textInputDecoration.copyWith(hintText: '**** **** **** 6773'),
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
                          'Expiry Date:',
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
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        decoration: textInputDecoration.copyWith(hintText: 'MM/YY'),
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
                          'CCV:',
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
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          decoration: textInputDecoration.copyWith(hintText: '***')
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
                'Card Holder Name:',
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
              cursorColor: Colors.black,
              decoration: textInputDecoration.copyWith(hintText: 'Sanjiv Gurung'),
            ),
          ),
        ],
      ),
    );
  }
}
