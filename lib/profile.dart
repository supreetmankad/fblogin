import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg1.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 80.0, 0.0, 0.0),
                      child: Text(
                        'Profile',
                        style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(240.0, 80.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[

                      SizedBox(height: 50.0),
                      Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.deepPurpleAccent,
                            color: Colors.deepPurple,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(height: 10.0),
                      Container(
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/login');
                            },
                            child:

                            Center(
                              child: Text('Home',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            ),


                          ),
                        ),
                      ),
                    ],
                  )),
              // SizedBox(height: 15.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //       'New to Spotify?',
              //       style: TextStyle(
              //         fontFamily: 'Montserrat',
              //       ),
              //     ),
              //     SizedBox(width: 5.0),
              //     InkWell(
              //       child: Text('Register',
              //           style: TextStyle(
              //               color: Colors.green,
              //               fontFamily: 'Montserrat',
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.underline)),
              //     )
              //   ],
              // )
            ])));
  }
}