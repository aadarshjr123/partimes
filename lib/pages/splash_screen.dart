import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parttimes/utils/mynavig.dart';

class SplashScreen extends StatefulWidget{
@override
_SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState(){
  super.initState();
  Timer(Duration(seconds: 2),()=>MyNavigator.goToHome(context));
  }
 
 @override
 Widget build(BuildContext context){
 return Scaffold(
   body:Stack(fit: StackFit.expand,
   children: <Widget>[
     Container(decoration: BoxDecoration(color: Colors.redAccent),
     ),
     Column(
       mainAxisAlignment:MainAxisAlignment.center,
       children:<Widget>[
         Expanded(
           flex: 2,
           child: Container(
             child: Column(
               mainAxisAlignment:MainAxisAlignment.center,
               children:<Widget>[
                 CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 50.0,
                   child: Icon(
                     Icons.attach_money,
                     color: Colors.redAccent,
                     size:75.0,
                   ), 
                ),
                Padding(padding: EdgeInsets.only(top: 10.0),
                
                ),
                Text("partime...",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 24.0,
                  fontFamily: "BethEllen",
                ),
                 )

               ],
               ),
               ),
               ),
               Expanded(
                 flex: 1,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     CircularProgressIndicator(),
                     Padding(padding: EdgeInsets.only(top: 20.0),
                     ),
                     Text("Loading",
                     textAlign: TextAlign.center,style: TextStyle(fontFamily: "BethEllen",color: Colors.white)
                     
                     
                     )
                   ],
                   

                 ),
               )
       ],
     )
   ],
   ),
   );

 }  
}

