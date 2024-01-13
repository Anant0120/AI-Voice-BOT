import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'help_screen.dart';
import 'home_screen.dart';
//import 'components/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Lottie.asset(
              'assets/introduction_animation/Animation - 1700879233457.json',
              height: 450,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              "E&TC Companion",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 64, right: 64),
            child: Text(
              "An assistant to enhance accessibility of information about the E&TC Department and College",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom + 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                height: 58,
                padding: EdgeInsets.only(
                  left: 56.0,
                  right: 56.0,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.0),
                  color: Color(0xff132137),
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.only(
          //       bottom: MediaQuery.of(context).padding.bottom + 16),
          //   child: InkWell(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => Splash(),
          //         ),
          //       );
          //     },
          //     child: Container(
          //       height: 54,
          //       padding: EdgeInsets.only(
          //         left: 56.0,
          //         right: 56.0,
          //         top: 16,
          //         bottom: 16,
          //       ),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(38.0),
          //         color: Color(0xff132137),
          //       ),
          //       child: Text(
          //         "About the App",
          //         style: TextStyle(
          //           fontSize: 18,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
