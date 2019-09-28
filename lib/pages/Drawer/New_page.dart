import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("parttime",style: TextStyle(fontFamily: "BethEllen"),),
        centerTitle: true,
    ),
      body: Center(
        child: Text("Your limitation—it’s only your imagination.",style: TextStyle(fontFamily: "BethEllen"),),
      ),
    );
  }
}



