import 'package:flutter/material.dart';

class LogingForm extends StatelessWidget {
  const LogingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
         Navigator.pop(context);//الرجوع للصفحة الرئيسية
      },
      child:Icon(Icons.home) ,
      backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.grey[900], // لون خلفية الشاشة
      appBar: AppBar(
        title: Text(
          'Log in',
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
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/turki.jpg'),
                  radius: 66.0,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue[200],
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Divider(
              height: 30.0,
              color: Colors.yellow,
            ),
            // ignore: prefer_const_constructors

            // ignore: prefer_const_constructors
            SizedBox(height: 30.0),
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
                            "Enter Email", // مثل الي فوق بس هذي تطلع لفوق ماتختفي
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 74, 6, 134)),
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none),

                    //textInputAction: TextInputAction.done,
                    // obscureText: true,// جعل الكتابة مشفرة
                    keyboardType: TextInputType
                        .emailAddress, // تغيير وضعية الإدخال للكيبورد
                  ),
                ),
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
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login now",
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
