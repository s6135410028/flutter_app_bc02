import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_bc02/views/login_ui.dart';
import 'package:flutter_app_bc02/views/sign_up_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Code Fullscreen set ค่าของ status bar เฆ้นแบบ fullscreen
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.appStore,
                        size: 80.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'start',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'your',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'adventure',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return LoginUI();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                       MediaQuery.of(context).size.width - 120 ,
                       70.0, 
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ),
                    ),
                    primary: Colors.yellow[600],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You don\'t have an account',
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return SignUpUI();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sign up Here',
                         style: TextStyle(
                        fontWeight: FontWeight.bold,
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