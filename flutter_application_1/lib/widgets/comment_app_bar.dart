import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/citys_screen.dart';
import 'package:flutter_application_1/screens/places_screen.dart';
import 'package:flutter_application_1/screens/welcome_screen.dart';

class CommentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, PlacesScreen.routeName);
            },
            child: Ink(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.comment,
                color: Colors.red,
              ),
              Text(
                "Comments:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
