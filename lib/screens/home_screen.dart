// ignore_for_file: library_private_types_in_public_api

import 'package:profile_app/screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/screens/profile_screen.dart';
import 'package:profile_app/screens/editprofile_screen.dart';
import 'package:profile_app/screens/signout_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = ProfilePage();
      /*  case 1:
        page = EditProfilePage();*/
      case 1:
        page = AboutPage();
      case 2:
        page = SignOutPage();
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.person_rounded),
                    label: Text('Profile'),
                  ),
                  /* NavigationRailDestination(
                    icon: Icon(Icons.person_add_alt_1_rounded),
                    label: Text('Profile'),
                  ),*/
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.info_rounded,
                    ),
                    label: Text('About'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.exit_to_app_rounded,
                    ),
                    label: Text('Sign Out'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}
