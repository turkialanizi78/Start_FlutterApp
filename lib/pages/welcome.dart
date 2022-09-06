// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
// ignore: prefer_const_constructors
        title: Text(
          "welcome",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children:
           [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                "Login now",
                style: TextStyle(fontSize: 22),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromARGB(255, 162, 13, 95)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ))),
            ),
        SizedBox(height: 10,),
         ElevatedButton(
            onPressed: () {  Navigator.pushNamed(context, '/signup');},
            child: Text(
              "Sign Up" ,
              style: TextStyle(fontSize: 22,color: Colors.black),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 160, 44, 108)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66),
                ))),
          ),
         
          ],
        ),
      ),
    );
  }
}
