import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourPlacesBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.edit_location_alt_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
