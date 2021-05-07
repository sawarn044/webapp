import 'package:firstflutterproject/bg_image.dart';
import 'package:firstflutterproject/utilities/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BgImage(),
          Center(
           child: Padding(
             padding: const EdgeInsets.all(16),
             child: SingleChildScrollView(
               child: Card(
                 child: Column(
                   children: [
                     Form(
                         child: Padding(
                           padding: const EdgeInsets.all(16),
                           child: Column(
                             children: [
                               TextFormField(
                                 decoration: InputDecoration(
                                   hintText: "Enter Username",
                                   labelText: "Username"
                                 ),
                               ),
                               SizedBox(height: 20,),
                               TextFormField(
                                 obscureText: true,
                                 decoration: InputDecoration(
                                     hintText: "Enter Password",
                                     labelText: "Password"

                                 ),
                               ),
                               SizedBox(height: 20,),
                               Padding(
                                   padding: const EdgeInsets.all(8),
                                 child: RaisedButton(
                                   onPressed: (){

                                     Constants.prefs.setBool("loggedIn", true);
                                     Navigator.pushReplacementNamed(context, "/home");
                                   },
                                   child: Text("Sign In"),
                                   color: Colors.purple[300],
                                 ),
                               )
                             ],
                           ),
                         )
                     )
                   ],
                 ),
               ),
             ),
           ),
          )
        ],
      ),
    );
  }
}
