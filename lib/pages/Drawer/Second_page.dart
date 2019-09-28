import 'package:flutter/material.dart';

class SecondPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
           title: Text('partime..',style: TextStyle(fontFamily: "BethEllen"),),
           centerTitle: true,

        ),
       body: Center(

         child: Text(' Push yourself, because no one else is going to do it for you.',style: TextStyle(fontFamily: "BethEllen"),),
       ),

    );
  }
}