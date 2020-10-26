import 'package:flutter/material.dart';
import 'package:login/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

String username;
String password;

final formKey = GlobalKey<FormState>();
final scaffoldKey = GlobalKey<ScaffoldState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  login() {
    if (formKey.currentState.validate()) {
      print('sucess');
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Landing()));
//      Navigator.of(context).pushReplacement(
//        MaterialPageRoute(builder: (context) => Landing()),
//      );
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/img.jpeg'),
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val.isEmpty || val != "username") {
                      return 'Please enter a valid username';
                    }
                    return null;
                  },
                  onChanged: (val) {
                    username = val;
                  },
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.send,
//                  obscureText: true,
                  validator: (val) {
                    if (val.isEmpty || val != 'password') {
                      return 'Please enter a valid password';
                    }
                    return null;
                  },
                  onChanged: (val) {
                    username = val;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: login,
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.blueAccent,
                      child: Text(
                        "login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
