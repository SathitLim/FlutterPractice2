import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  String email;
  String pass;

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: buildForm(),
    );
  }

  Widget buildForm() {
    return Form(
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Padding(padding: EdgeInsets.only(bottom: 50.0)),
          submitButton(),
        ],
      ),
    );
  }
  
  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'you@example.com',
      ),
    );
  }
  Widget passwordField(){
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',

      ),
      obscureText: true,
    );
  }
  Widget submitButton(){
    return RaisedButton(
      child: Text('Submit'),
      color: Colors.blueAccent,
      textColor: Colors.white,
      onPressed: () {
        print('submit');
      },
    );
  }
}