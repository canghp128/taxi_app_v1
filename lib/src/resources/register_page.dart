import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app_v1/src/blocs/auth_bloc.dart';
import 'package:taxi_app_v1/src/resources/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthBloc _authBloc = AuthBloc();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 120),
              Image.asset('assets/ic_car_red.png'),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 6),
                child: Text(
                  'Welcome Aboard!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('Sign up with iCab in simple steps'),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: StreamBuilder(
                  stream: _authBloc.nameStream,
                  builder: (context, snapshot) {
                    return TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          errorText: snapshot.hasError ? snapshot.error : null,
                          prefixIcon: Icon(Icons.person)),
                    );
                  }
                ),
              ),
              StreamBuilder(
                stream: _authBloc.phoneStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        errorText: snapshot.hasError ? snapshot.error : null,
                        prefixIcon: Icon(Icons.phone)),
                  );
                }
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: StreamBuilder(
                  stream: _authBloc.emailStream,
                  builder: (context, snapshot) {
                    return TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          errorText: snapshot.hasError ? snapshot.error : null,
                          prefixIcon: Icon(Icons.email)),
                    );
                  }
                ),
              ),
              StreamBuilder(
                stream: _authBloc.passStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _passController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: snapshot.hasError ? snapshot.error : null,
                        prefixIcon: Icon(Icons.lock)),
                  );
                }
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                  child: SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: onSigUpClicked,
                    ),
                  )),
              RichText(
                text: TextSpan(
                    text: 'Already a User?',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Login now',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            })
                    ]),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

  void onSigUpClicked() {
    var isValid = _authBloc.isValid(_nameController.text, _phoneController.text,
        _emailController.text, _passController.text);
    if(isValid) {

    }
  }
}
