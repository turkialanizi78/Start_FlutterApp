// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ninja_id/pages/login.dart';
import 'package:ninja_id/pages/signup.dart';
import 'package:ninja_id/pages/welcome.dart';

void main(

) => runApp(MaterialApp(
    initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Welcome(),
        '/login': (context) => const LogingForm(),
        '/signup': (context) => const SignUp(),
      },
    )
    );
