import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:train_ticket/screens/BookingsScreen.dart';

class ViewUserScreen extends StatelessWidget {
  Widget _buildIDTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          margin: EdgeInsets.all(8),
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 45.0,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: primaryWhiteColor,
              fontFamily: 'Poppins',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.credit_card,
                color: primaryWhiteColor,
              ),
              hintText: 'Enter the User ID',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8),
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 45.0,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: primaryWhiteColor,
              fontFamily: 'Poppins',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.perm_identity,
                color: primaryWhiteColor,
              ),
              hintText: 'Enter the User Name',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDBTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          child: Container(
            margin: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 45.0,
            child: Center(
              child: Text(
                "Select from User DB",
                style: TextStyle(
                  color: primaryWhiteColor,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text("View User Information"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.send,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookingsScreen()),
          );
        },
      ),
      body: Container(
        child: Column(
          children: [
            _buildIDTF(),
            Container(
              child: Text(
                "or",
              ),
            ),
            _buildNameTF(),
            Container(
              child: Text(
                "or",
              ),
            ),
            _buildDBTF(),
          ],
        ),
      ),
    );
  }
}
