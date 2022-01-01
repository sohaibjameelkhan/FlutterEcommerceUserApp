import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
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
              hintText: "Enter Emai Adress",

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot Passsword?")
            ],
          ),
           SizedBox(
            height: 10,
          ),

          RaisedButton(onPressed: (){

          },
            child:Text("Login"),

          )

        ],
      ),
    );
  }
}
