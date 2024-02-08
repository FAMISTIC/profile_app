//In development mode
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/screens/signin_screen.dart';

class SignOutPage extends StatelessWidget {
  SignOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Out Page")),
      body: Center(
        child: ElevatedButton(
          child: Text("Sign Out"),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed Out");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            });
          },
        ),
      ),
    );
  }
}
