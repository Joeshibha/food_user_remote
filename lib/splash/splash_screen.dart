import 'dart:async';
import 'package:food_user/authentication/auth_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SplashScreen> {
  startTimer()
  {
    Timer(const Duration(seconds:4),() async {
      Navigator.push(context,MaterialPageRoute(builder:(c)=> const AuthScreen()));
    });
  }
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child:Container(
            color:Colors.white,
            child:Center(
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Image.asset("images/splash.jpg"),
                      const SizedBox(height:10),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                            "Sell Food Online",
                            textAlign: TextAlign.center,
                            style:TextStyle(
                              color: Colors.black54,
                              fontSize:40,
                              fontFamily:"Signatra",
                              letterSpacing:3,
                            )
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }
}
