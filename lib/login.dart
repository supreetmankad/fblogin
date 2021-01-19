import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';






class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLogin = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  User _user;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: !_isLogin
          ? Center(
          child: OutlineButton(
            onPressed: () async {
              await _handleLogin();
            },
            child: Text(
              "Login with Facebook",
              style: TextStyle(fontSize: 20),
            ),
          )
      )
          : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 80,
                backgroundImage: NetworkImage(_user.photoURL),),
              Text(_user.displayName, style: TextStyle(fontSize: 30),),
              OutlineButton(
                onPressed: () async{
                  await _signOut();
                },
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 20),
                ),
              )

            ],
          )
      ),

    );


}

  Future _handleLogin() async {
    FacebookLoginResult _result = await _facebookLogin.logIn(['email']);
    switch (_result.status) {
      case FacebookLoginStatus.cancelledByUser:
        print("Cancelled by user");
        break;
      case FacebookLoginStatus.error:
        print("Error");
        break;
      case FacebookLoginStatus.loggedIn:
        await _loginWithFacebook(_result);

        break;
    }
  }

  Future _loginWithFacebook(FacebookLoginResult _result) async {
    FacebookAccessToken _accessToken = _result.accessToken;
    AuthCredential _credential = FacebookAuthProvider.credential(
        _accessToken.token);
    var a = await _auth.signInWithCredential(_credential);
    setState(() {
      _isLogin = true;
      _user = a.user;
    });



}
  Future _signOut() async {
    await _auth.signOut().then((value) {
      setState(() {
        _facebookLogin.logOut();
        _isLogin = false;

      });
    });
  }
}