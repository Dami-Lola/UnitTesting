import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;
  String _username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Form"),
        backgroundColor: Colors.lightBlue[200],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          autovalidateMode: AutovalidateMode.disabled, key: _formKey,
          child: new ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: 250,
                  height: 70,
                  child: TextFormField(
                    key: Key('username'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserName',
                      hintText: 'Enter username eg lola.vola',
                    ),
                    validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
                    onSaved: (String value) => _username = value,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: 250,
                  height: 70,
                  child: TextFormField(
                    key: Key('email'),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email address',
                      hintText: 'Enter your email address',
                    ),
                    validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
                    onSaved: (String value) => _email = value,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: 250,
                  height: 70,
                  child: TextFormField(
                    key: Key('password'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),
                    validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
                    onSaved: (String value) => _password = value,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  width: 200.00,
                  height: 50.00,
                  child: ElevatedButton(
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.lightBlue[200]),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                        }
                        else {
                          print('Don\'t be silly');
                        }
                      }
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign in',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                    ],
                  ),
                ),
                ],
          ),
         /*   Text(
              "Good Day!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                wordSpacing: 5,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Please fill in this form to create a new account",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),

          */
        ),
      ),
    );
  }
}
