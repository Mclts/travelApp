import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/places_bottom_bar.dart';
import '../widgets/places_app_bar.dart';

class PlacesScreen extends StatelessWidget {
  static String routeName = '/placesScreen';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/city2.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PlacesAppBar(),
        ),
        bottomNavigationBar: PlacesBottomBar(),
      ),
    );
  }
}
