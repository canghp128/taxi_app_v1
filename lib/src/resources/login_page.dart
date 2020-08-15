import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app_v1/src/resources/register_page.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 140),
              Image.asset('assets/ic_car_green.png'),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 6),
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              Text('Login to continues using iCab'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password', prefixIcon: Icon(Icons.lock)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot password?'),
                ),
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: 'New User?',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign up for a new account',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              })
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
