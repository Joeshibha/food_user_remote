import 'package:flutter/material.dart';
import 'package:food_user/authentication/register.dart';

import 'login.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:2,
        child: Scaffold(
          appBar:AppBar(
            flexibleSpace:Container(
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Colors.redAccent,Colors.orangeAccent,Colors.yellowAccent,Colors.greenAccent,Colors.lightBlueAccent,Colors.purpleAccent,
                  ],
                  begin:FractionalOffset(0.0,0.0),
                  end:FractionalOffset(1.0,0.0),
                  stops:[0.0,0.2,0.4,0.6,0.8,1.0],
                  tileMode:TileMode.clamp,
                ),
              ),
            ),
            title:const Text("BBBB Food",
            style:TextStyle(
              fontSize:54,
              color:Colors.white,
              fontFamily: "Lobster",
              ),
            ),
            centerTitle:true,
            bottom:const TabBar(
              tabs:[
                Tab(
                  icon:Icon(Icons.lock,color:Colors.white,),
                  text:"Login"
                ),
                Tab(
                    icon:Icon(Icons.person,color:Colors.white,),
                    text:"Register"
                ),
              ],
              indicatorColor:Colors.white38,
              indicatorWeight: 6,
            ),
          ),
          body:Container(
            decoration:const BoxDecoration(
              gradient:LinearGradient(
                begin:Alignment.topLeft,
                end:Alignment.bottomRight,
                colors:[Colors.purpleAccent,Colors.lightBlueAccent,Colors.greenAccent,Colors.yellowAccent,Colors.orangeAccent,Colors.redAccent]
              ),
            ),
            child:const TabBarView(
              children:[
                LoginScreen(),
                RegisterScreen(),
              ]
            ),
          ),
        ),
    );
  }
}
