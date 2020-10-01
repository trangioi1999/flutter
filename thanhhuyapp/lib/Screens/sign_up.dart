import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thanhhuyapp/Screens/LoginScreen.dart';
import 'package:thanhhuyapp/Screens/root_app.dart';
import 'package:thanhhuyapp/Widgets/background.dart';
import 'package:thanhhuyapp/Widgets/have_an_account.dart';
import 'package:thanhhuyapp/themes/colors.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(child:BodySignUpScreen() )
    );
  }


}
class BodySignUpScreen extends StatefulWidget {

  @override
  _BodySignUpScreenState createState() => _BodySignUpScreenState();
}

class _BodySignUpScreenState extends State<BodySignUpScreen> {
  TextEditingController emailController = new  TextEditingController();
  TextEditingController passwordController = new  TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
       SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text('SIGN UP',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              textColor: Colors.white,
            ),
            SizedBox(height: size.height *0.03,),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
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
class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.02),
      width: size.width * 0.8,
      child: Row(
        children:[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),

        ]
      ),


    );
  }
  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}

