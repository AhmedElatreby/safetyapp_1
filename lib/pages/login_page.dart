import 'package:flutter/material.dart';

class LogingPage extends StatefulWidget {

  @override
  _LogingPageState createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: width,
            height: height*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assests/images/loginimg.png"
                ),
                fit: BoxFit.cover
              ),
            ),
          ),
        ],
      ),
    );
  }
}
