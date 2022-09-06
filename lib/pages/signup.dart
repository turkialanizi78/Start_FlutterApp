// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: () {
       Navigator.pop(context);//الرجوع للصفحة الرئيسية
      },
      child:Icon(Icons.home) ,
      backgroundColor: Colors.pink,
      ),
      backgroundColor:Colors.grey[850], // لون خلفية الشاشة
      appBar: AppBar(
// ignore: prefer_const_constructors
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.blue[200],
            fontSize: 27,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 100, 30, 0),
        child: Column(
          children: [
            //Text('page',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 84, 3, 3)),),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 193, 249),
                      borderRadius: BorderRadius.circular(66)),
                  child: TextField(
                    //decoration: InputDecoration(hintText: "Enter Email"),// وضع هينت للتكست فيلد
                    decoration: InputDecoration(
                        labelText:
                            "User Name", // مثل الي فوق بس هذي تطلع لفوق ماتختفي
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 74, 6, 134)),
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none),

                    //textInputAction: TextInputAction.done,
                    // obscureText: true,// جعل الكتابة مشفرة
                    keyboardType: TextInputType
                        .name, // تغيير وضعية الإدخال للكيبورد
                  ),
                ),
          
                SizedBox(height: 12.0),
                 Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 193, 249),
                      borderRadius: BorderRadius.circular(66)),
                  child: TextField(
                    //decoration: InputDecoration(hintText: "Enter Email"),// وضع هينت للتكست فيلد
                    decoration: InputDecoration(
                        labelText:
                            "Enter Email", // مثل الي فوق بس هذي تطلع لفوق ماتختفي
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 74, 6, 134)),
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none),

                    //textInputAction: TextInputAction.done,
                    // obscureText: true,// جعل الكتابة مشفرة
                    keyboardType: TextInputType
                        .emailAddress, // تغيير وضعية الإدخال للكيبورد
                  ),
                ),
             SizedBox(height: 12.0),  
                    Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 170, 228),
                      borderRadius: BorderRadius.circular(66)),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter password",
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 86, 5, 116)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      border: InputBorder.none,
                    ),

                    obscureText: true, // جعل الكتابة مشفرة
                  ),
                ),
                SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 22),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 162, 13, 95)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ))),
                ),
             
              ],
            ),
          ],
        ),
      ),
    
    
    );
  }
}
