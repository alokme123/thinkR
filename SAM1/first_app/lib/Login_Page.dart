import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'google_sign_in.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("assets/img.png"),
                height: 200,
              ),
              padding: EdgeInsets.only(top: 60),
            ),
            Padding(padding: EdgeInsets.only(left: 20, right: 20)),
            SizedBox(height: 10),
            Text(
              "A Place for Thoughts And Ideas",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.deepOrange[400]),
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(

                obscureText: true,
                style: TextStyle(color: Colors.deepOrange[400]),
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            SizedBox(height: 40),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("SIGN IN"),
            ),
            SizedBox(
              height: 50,
            ),
            _signInButton(),
          ],
        ),
      ),
    );
  }

  Widget _signInButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return FirstScreen();
              },
            ),
          );
        });
      },
      label: Text("Google"),
      icon: Image(
        image: AssetImage("assets/google_logo.png"),
        height: 20,
      ),
    );
  }
}
