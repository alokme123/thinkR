import 'package:flutter/material.dart';


Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark()
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.

      ,
      home: AuthenticationWrapper(title: 'THINK r'),
    );
  }
}

class AuthenticationWrapper extends StatefulWidget {
  AuthenticationWrapper({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 20, right: 20)),
            SizedBox(height: 150),
            Text(
              "A Place for Thoughts And Ideas",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 40),
            Container(padding: EdgeInsets.only(left: 20,right: 20),child:TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.deepOrange[400]),
              decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
            ) ,)
            ,
            SizedBox(height: 30),
            Container(padding: EdgeInsets.only(left: 20,right: 20),child:TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.deepOrange[400]),
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
            ) ,),
            SizedBox(height: 80),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 70),
                  FloatingActionButton.extended(
                    onPressed: () {
                      
                    }
                      // Add your onPressed code here!
                    ,label: const Text('SIGN IN'),
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(width: 70),
                  FloatingActionButton.extended(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    label: const Text('SIGN UP'),
                    backgroundColor: Colors.white,
                  )
                ],
              ),
          
           
      ),
          ]),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
