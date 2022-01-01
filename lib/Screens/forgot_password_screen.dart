import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Forgot Password"),
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
        decoration:  InputDecoration(
          hintText: "Enter Email Address",

        ),

      ),
          SizedBox(
            height: 20,
          ),
          FlatButton(onPressed: (){}, child:  Text("Get Password Reset Link"))
    ])
    );
  }
}
