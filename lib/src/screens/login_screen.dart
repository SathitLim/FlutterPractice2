import 'package:flutter/material.dart';
import 'package:flutter_pratice2/src/mixin/validate_mixin.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidateMixin {
  final formKey = GlobalKey<FormState>();
  String email;
  String pass;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: buildForm(),
    );
  }

  Widget buildForm() {
    return Form(
      key: formKey,
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
      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );
  }
  Widget passwordField(){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter Password',
        ),
        obscureText: true,
        validator: validatePassword,
        onSaved: (String value){
          pass = value;
        },
      ),
    );
  }
  Widget submitButton(){
    return RaisedButton(
      child: Text('Submit'),
      color: Colors.blueAccent,
      textColor: Colors.white,
      onPressed: () {
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          print('Print $email and $pass .');
        }
      },
    );
  }
}