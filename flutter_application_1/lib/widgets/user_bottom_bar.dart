import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/user_screen.dart';

import '../screens/your_places_screen.dart';

class UserBottomBar extends StatelessWidget {
  final items = const [
    Icon(Icons.person_outline, size: 20),
    SizedBox(width: 15),
    Icon(
      Icons.home,
      size: 30,
      color: Colors.redAccent,
    ),
    SizedBox(width: 15),
    Icon(Icons.edit_location_alt_outlined, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 0,
      items: items,
      onTap: (selectedIndex) {
        if (selectedIndex == 0) {
          Navigator.pushNamed(context, UserScreen.routeName);
        } else if (selectedIndex == 2) {
          Navigator.pushNamed(context, HomeScreen.routeName);
        } else if (selectedIndex == 4) {
          Navigator.pushNamed(context, YourPlaces.routeName);
        }
      },
    );
  }
}
