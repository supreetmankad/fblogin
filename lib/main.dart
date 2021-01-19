
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


//import 'signup.dart';
import 'profile.dart';
import 'login.dart';
//import 'home.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'fbharmeny',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //'/signup': (BuildContext context) => new SignupPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
        '/login': (BuildContext context) => new LoginPage(),
        //'/home': (BuildContext context) => new Home(),
      },
      home: LoginPage(),


    );




  }
}




