import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {

  Widget build(context) {
    return Container(

      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top:25.0)),
          submitButton()

        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "your@email.com",
            labelText: "Email Text"
          ,errorText: "Invalid Emial"
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Password",
        labelText: "Password"
      ),

      onChanged: (newValue) {
         bloc.emailController.sink.add(newValue);
      },


    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () => {

      },
      child: Text('Login'),
      color: Colors.redAccent,
    );
  }

}

