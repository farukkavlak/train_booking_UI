import 'package:flutter/material.dart';
import 'package:train_ticket/formats/Category.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:train_ticket/screens/SupportScreen.dart';
import 'package:train_ticket/screens/MyBookingsScreen.dart';
import 'package:train_ticket/screens/RefundScreen.dart';
import 'package:train_ticket/screens/SearchTicket.dart';
import 'package:train_ticket/screens/LoginScreen.dart';
import 'package:train_ticket/screens/SignupScreen.dart';

class CategoryCardSupport extends StatelessWidget {
  final Category data;

  CategoryCardSupport(this.data);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SupportScreen()),
        );
      },
      child: Container(
        height: 80,
        child: Stack(
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20, color: Colors.black45, spreadRadius: -8)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset(data.image, width: 64),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        data.title,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        "Waiting for support for 5m",
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 24,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 24),
              decoration: BoxDecoration(
                color: data.color,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
