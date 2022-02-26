import 'package:train_ticket/screens/SearchTicket.dart';
//import 'package:challenge_infracea/pages/trips/trips_page.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:flutter/material.dart';

class PagesController extends StatefulWidget {
  @override
  _PagesControllerState createState() => _PagesControllerState();
}

class _PagesControllerState extends State<PagesController> {
  PageController _pageController = PageController(initialPage: 0);
  int bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          SearchTicket(),
          //TripsPage(),
          Container(
            child: Center(
              child: Text('Messages'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Profile'),
            ),
          ),
        ],
      ),
    );
  }
}
