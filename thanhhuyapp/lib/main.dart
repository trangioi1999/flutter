import 'package:flutter/material.dart';
import 'package:thanhhuyapp/Screens/AddUser.dart';

import 'Screens/addUserActitvity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//          appBar: AppBar(title: Text("Gas Thành huy",),
//            centerTitle: true,
//          ),
        body: AddUser(
        ),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _gotoAddUserActivity() {
     Navigator.push(context, MaterialPageRoute(builder: (context) => AddUserActivity()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: FloatingActionButton(
      onPressed: _gotoAddUserActivity,
          child:Icon(Icons.add),
      ),
    );
  }
}









