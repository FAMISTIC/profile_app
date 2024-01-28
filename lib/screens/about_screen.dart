import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us Page")),
      body: const Center(
        child: Center(
          child: Padding(
            //padding: EdgeInsets.all(8),
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text(
              'This app is a group project made by Freedom. ',
              style: TextStyle(fontFamily: 'RobotoMono'),
            ),
          ),
        ),
      ),
    );
  }
}
