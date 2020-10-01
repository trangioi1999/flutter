import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thanhhuyapp/Screens/sign_up.dart';
import 'package:thanhhuyapp/Widgets/background.dart';
import 'package:thanhhuyapp/themes/colors.dart';

import 'LoginScreen.dart';
class WelcomScreen extends StatefulWidget {
  @override
  _WelcomScreenState createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO MY APP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            MaterialButton(
              elevation: 0,
              minWidth: size.width*0.8,
              height: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              color: primaryColor,
              child: Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              textColor: Colors.white,
            ),
           SizedBox(height: 30,),
            MaterialButton(
              elevation: 0,
              minWidth: size.width*0.8,
              height: 50,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
              },
              color: primaryLightColor,
              child: Text('Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}


