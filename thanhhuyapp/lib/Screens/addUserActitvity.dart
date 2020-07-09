import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanhhuyapp/firebase/firebase_cloud.dart';
import 'package:thanhhuyapp/model/user.dart';
class AddUserActivity extends StatefulWidget {
  @override
  _AddUserActivityState createState() => _AddUserActivityState();
}

class _AddUserActivityState extends State<AddUserActivity> {
    TextEditingController nameController = new TextEditingController();
    TextEditingController phoneController = new TextEditingController();
    TextEditingController addressController = new TextEditingController();
    TextEditingController gasTypeController = new TextEditingController();
    TextEditingController dateStartController = new TextEditingController();
    fireBaseCloud _fireBaseCloud = fireBaseCloud();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Image.asset('assets/ic_logo.jpg',height: 140,width: 200,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
            child: StreamBuilder(
                stream:null ,
                builder: (context, snapshot) => TextField(
                  controller: nameController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      errorText:
                      snapshot.hasError ? snapshot.error : null,
                      labelText: "Name",
                      prefixIcon: Container(
                          width: 50, child: Icon(Icons.person)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffCED0D2), width: 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(6)))),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: StreamBuilder(
                stream:null ,
                builder: (context, snapshot) => TextField(
                  controller: phoneController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      errorText:
                      snapshot.hasError ? snapshot.error : null,
                      labelText: "Phone",
                      prefixIcon: Container(
                          width: 50,child: Icon(Icons.phone)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffCED0D2), width: 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(6)))),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: StreamBuilder(
                stream:null ,
                builder: (context, snapshot) => TextField(
                  controller: addressController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      errorText:
                      snapshot.hasError ? snapshot.error : null,
                      labelText: "address",
                      prefixIcon: Container(
                          width: 50,child: Icon(Icons.location_on)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffCED0D2), width: 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(6)))),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: StreamBuilder(
                stream:null ,
                builder: (context, snapshot) => TextField(
                  controller: gasTypeController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      errorText:
                      snapshot.hasError ? snapshot.error : null,
                      labelText: "Gas Type",
                      prefixIcon: Container(
                          width: 50, child: Icon(Icons.local_gas_station)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffCED0D2), width: 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(6)))),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: StreamBuilder(
                stream:null ,
                builder: (context, snapshot) => TextField(
                  controller: dateStartController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      errorText:
                      snapshot.hasError ? snapshot.error : null,
                      labelText: "Date Start",
                      prefixIcon: Container(
                          width: 50, child: Icon(Icons.date_range)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffCED0D2), width: 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(6)))),
                )),
          ),
        ],
      ),
      ),
    );
  }
}
