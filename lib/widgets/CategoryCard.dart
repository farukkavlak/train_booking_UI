import 'package:flutter/material.dart';
import 'package:train_ticket/formats/Category.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:train_ticket/screens/SupportScreen.dart';
import 'package:train_ticket/screens/MyBookingsScreen.dart';
import 'package:train_ticket/screens/RefundScreen.dart';
import 'package:train_ticket/screens/SearchTicket.dart';
import 'package:train_ticket/screens/LoginScreen.dart';
import 'package:train_ticket/screens/SignupScreen.dart';
import 'package:train_ticket/screens/ViewUserScreen.dart';

class CategoryCard extends StatelessWidget {
  final Category data;

  CategoryCard(this.data);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if (data.functionCode == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchTicket()),
          );
        } else if (data.functionCode == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyBookingsScreen()),
          );
        } else if (data.functionCode == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RefundScreen()),
          );
        } else if (data.functionCode == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportScreen()),
          );
        } else if (data.functionCode == 4) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        } else if (data.functionCode == 9) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ViewUserScreen()),
          );
        }
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
                  Text(
                    data.title,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      color: primaryColor,
                    ),
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
