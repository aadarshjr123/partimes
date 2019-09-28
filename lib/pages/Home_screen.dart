import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parttimes/utils/mynavig.dart';

import '../pages/News_screen.dart' as news;
import '../pages/Settings_screen.dart' as settings;
import '../pages/Main_screen.dart' as mainscreen;
import '../pages/Drawer/New_page.dart';




class HomeScreen extends StatefulWidget{
@override
_HomeScreenState createState() => new _HomeScreenState();

}


class _HomeScreenState  extends State<HomeScreen> with SingleTickerProviderStateMixin{

TabController controller;



@override
void initState() {
controller =TabController(length: 3,vsync: this);
super.initState();
}

@override
void dispose(){
controller.dispose();
super.dispose();

}


@override
Widget build(BuildContext context){
return new Scaffold(
backgroundColor: Colors.white,

appBar: AppBar(
  title: Text("partime..",
  style: TextStyle( color: Colors.white,fontFamily: "BethEllen")),
  centerTitle: true,

  backgroundColor: Colors.redAccent,
  elevation: defaultTargetPlatform == TargetPlatform.android ? 15.0 :0.0,
  
  
  ),
  drawer: Drawer(
    
    child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            
            accountName: Text("Aadarshjr",style: TextStyle(color: Colors.white,fontFamily: "BethEllen"),),
            accountEmail: Text("Aadarshjr195@gmail.com",style: TextStyle(color: Colors.white,fontFamily: "BethEllen"),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("A",style: TextStyle(color: Colors.redAccent,fontFamily: "BethEllen"),),
                
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("D",style: TextStyle(color: Colors.redAccent,fontFamily: "BethEllen"),),
                
              )
              
            ],
            
          ),
          ListTile(
            title: Text("Edit",style: TextStyle(color: Colors.grey,fontFamily: "BethEllen"),),
            trailing: Icon(Icons.assignment_return),
            onTap: () { 
              Navigator.of(context).pop();
              MyNavigator.goTopage(context);
            },
            ),
            
          ListTile(
            title: Text("Login",style: TextStyle(color: Colors.grey,fontFamily: "BethEllen"),),
            trailing: Icon(Icons.assignment_return),
            onTap: (){
              Navigator.of(context).pop();
              MyNavigator.goTosecond(context);
            }
          ),
          ListTile(
            title: Text("settings",style: TextStyle(color: Colors.grey,fontFamily: "BethEllen"),),
            trailing: Icon(Icons.assignment_return),
            onTap: (){
              Navigator.of(context).pop();
              MyNavigator.goTologin(context);
            }
          ),
          ListTile(
            title: Text("Close",style: TextStyle(color: Colors.grey,fontFamily: "BethEllen"),),
            trailing: Icon(Icons.close),
            onTap: ()=> Navigator.of(context).pop(),
          )
        ],
    ),
  ),




bottomNavigationBar: Material(
  elevation: 10.0,
  color: Colors.redAccent,
  child: TabBar(

    controller: controller,
    tabs: <Tab>[
      Tab(icon: Icon(Icons.home)),
      Tab(icon: Icon(Icons.assignment)),
      Tab(icon: Icon(Icons.settings)),
    ]
  )
),

body: TabBarView(
  controller: controller,
  children: <Widget>[
    //news.News(),
    news.News(),
    settings.Settings(),
    mainscreen.MainScreen(),
    
  ]
  
)
);
}
}
  /*leading:IconButton(
    icon: Icon(Icons.dehaze,color: Colors.blueGrey),
    onPressed: (){},
  ),
  title: Text("partime..",
  style: TextStyle( color: Colors.blueGrey,fontFamily: "BethEllen")),
  centerTitle: true,
  actions: <Widget>[
    IconButton(
    icon: Icon(Icons.more_horiz,color: Colors.blueGrey),
    onPressed: (){},
  ),
  ],
),*/

/*bottomNavigationBar: BottomNavigationBar(

 
 items: [
   BottomNavigationBarItem( 
   icon: Icon(Icons.home),
   title:new Text("Home",style: TextStyle(color:Colors.blueGrey,fontFamily:"BethEllen")),
   ),
   BottomNavigationBarItem( 
   icon: Icon(Icons.assignment),
   title:new Text("News",style: TextStyle(color:Colors.blueGrey,fontFamily:"BethEllen")),
     
   ),
   BottomNavigationBarItem( 
   icon: Icon(Icons.settings),
   title:new Text("Settings",style: TextStyle(color:Colors.blueGrey,fontFamily:"BethEllen")),
   
   )
 ],

),
);
}
}*/

