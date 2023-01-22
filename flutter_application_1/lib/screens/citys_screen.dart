import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/citys_app_bar.dart';
import '../widgets/citys_bottom_bar.dart';

class CitysScreen extends StatelessWidget {
  static String routeName = '/citysScreen';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/city4.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CitysAppBar(),
        ),
        bottomNavigationBar: CitysBottomBar(),
      ),
    );
  }
}
