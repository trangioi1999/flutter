import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thanhhuyapp/Screens/root_app.dart';
import 'package:thanhhuyapp/Screens/sign_up.dart';
import 'package:thanhhuyapp/Widgets/background.dart';
import 'package:thanhhuyapp/Widgets/have_an_account.dart';
import 'package:thanhhuyapp/themes/colors.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: BodyLoginScreen(),
      ),

    );
  }
}

class BodyLoginScreen extends StatefulWidget {
  @override
  _BodyLoginScreenState createState() => _BodyLoginScreenState();
}

class _BodyLoginScreenState extends State<BodyLoginScreen> {
  TextEditingController emailController = new  TextEditingController();
  TextEditingController passwordController = new  TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            height: size.height *0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height *0.03,
          ),
          _buildTextField(emailController,Icons.email,"Email"),
          SizedBox(
            height: size.height *0.03,
          ),
          _buildTextField(emailController,Icons.lock,"Password"),
          SizedBox(height: size.height*0.03,),
          MaterialButton(
            elevation: 0,
            minWidth: size.width*0.8,
            height: 50,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RootApp(),));
            },
            color: primaryColor,
            child: Text('LOGIN',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            textColor: Colors.white,
          ),
          SizedBox(height: size.height *0.03,),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUp();
                  },
                ),
              );
            },
          ),
        ],

      ),

    );
  }

  _buildTextField(
      TextEditingController controller, IconData icon, String labelText ) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: primaryLightColor, border: Border.all(color: Colors.blue)),
      child: TextField(
        controller: controller,
        style: TextStyle(color:Colors.black ),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black),
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            // suffixIcon: Icon(
            //   suffixIcon,
            //   color: primaryColor,
            // ),
            border: InputBorder.none),
      ),
    );
  }
}

