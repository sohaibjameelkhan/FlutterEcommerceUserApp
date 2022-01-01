import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("SignUp Screen"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
           SizedBox(
            height: 2,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Email Address",

            ),

          ),
         SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration:  InputDecoration(
                hintText: "Enter Password"
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Confirm Password"
            ),
          ),


          RaisedButton(onPressed: (){

          },
            child: Text("Sign Up"),

          )

        ],
      ),
    );
  }
}
