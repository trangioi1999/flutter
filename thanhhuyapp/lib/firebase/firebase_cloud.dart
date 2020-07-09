import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:thanhhuyapp/model/user.dart';

class fireBaseCloud {
  bool isLoggedIn() {
    if(FirebaseAuth.instance.currentUser() != null) {
      return true;
    }else {
      return false;
    }
    }
    Future<void> addUser(User) async {
    if(isLoggedIn())
      {
        Firestore.instance.collection('user').add(User).catchError((e) {
          print(e);
        });
      }else {
      print('You need to be logged in');
    }
    }

  }
