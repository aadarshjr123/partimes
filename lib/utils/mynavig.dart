import 'package:flutter/material.dart';

class MyNavigator{


static void goTomain(BuildContext context)
{

  Navigator.pushNamed(context, "/mainscreen");
  
}

static void goToHome(BuildContext context)
{

  Navigator.pushNamed(context, "/home");
  
}
static void goTonew(BuildContext context)
{

  Navigator.pushNamed(context, "/new");
  
}
static void goTosetting(BuildContext context)
{

  Navigator.pushNamed(context, "/setting");
  
}
static void goTopage(BuildContext context)
{

  Navigator.pushNamed(context, "/newpages");
  
}

static void goTosecond(BuildContext context)
{


  Navigator.pushNamed(context, "/secondpages");
}
static void goTologin(BuildContext context)
{


  Navigator.pushNamed(context, "/loginpages");
}


}