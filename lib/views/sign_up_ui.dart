import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class SignUpUI extends StatefulWidget {
  const SignUpUI({ Key? key }) : super(key: key);

  @override
  _SignUpUIState createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF424552),
      body: SingleChildScrollView(
        child:Center(
          child:Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        'New\nAccountant',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '1/2\nSTEPS',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        30.0
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(
                          50.0,
                        )
                      ),
                      child: Icon(
                        FontAwesomeIcons.ankh,
                        color: Colors.grey[400],
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Upload a profile picture\n(Upload)',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}