import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:train_ticket/formats/Category.dart';
import 'package:train_ticket/screens/SearchTicket.dart';
import 'package:train_ticket/screens/MyBookingsScreen.dart';
import 'package:train_ticket/screens/SupportScreen.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:train_ticket/screens/RefundScreen.dart';
import 'package:train_ticket/widgets/CategoryCard.dart';
import 'package:train_ticket/widgets/CategoryCardSupport.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  static const categoryModels = [
    Category(
      image: 'assets/images/route.png',
      color: categoryColor2,
      title: 'Create Route',
      functionCode: 7,
    ),
    Category(
      image: 'assets/images/route.png',
      color: categoryColor2,
      title: 'Delete Route',
      functionCode: 8,
    ),
    Category(
      image: 'assets/images/profile.jpg',
      color: categoryColor2,
      title: 'View User',
      functionCode: 9,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhiteColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36)),
                    color: primaryColor,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 28,
                      color: primaryWhiteColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 120, 16, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Admin Panel",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 24,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: primaryWhiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(children: [
                for (var model in categoryModels)
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3.0, vertical: 16),
                      child: CategoryCard(model))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
