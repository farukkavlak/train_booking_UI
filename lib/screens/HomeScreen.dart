import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:train_ticket/formats/Category.dart';
import 'package:train_ticket/screens/SearchTicket.dart';
import 'package:train_ticket/screens/MyBookingsScreen.dart';
import 'package:train_ticket/screens/SupportScreen.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:train_ticket/screens/RefundScreen.dart';
import 'package:train_ticket/widgets/CategoryCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const categoryModels = [
    Category(
      image: 'assets/images/ticket.png',
      color: categoryColor2,
      title: 'Buy Ticket',
      functionCode: 0,
    ),
    Category(
      image: 'assets/images/tickets.png',
      color: categoryColor2,
      title: 'My Bookings',
      functionCode: 1,
    ),
    Category(
      image: 'assets/images/refund.png',
      color: categoryColor2,
      title: 'Refund Ticket',
      functionCode: 2,
    ),
    Category(
      image: 'assets/images/support.png',
      color: categoryColor2,
      title: 'Support',
      functionCode: 3,
    ),
    Category(
      image: 'assets/images/logout.png',
      color: categoryColor2,
      title: 'Logout',
      functionCode: 4,
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
                        "Train Ticketing System",
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
