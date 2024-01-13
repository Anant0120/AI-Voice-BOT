import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'speech.dart';
import 'facultyDetails.dart';
import 'icscanner.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      items: [
                        Text(
                          "Have a Query ? \n Ask away !",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black

                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "क्या आपको कोई सवाल है? पूछें !",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,

                        ),
                        Text(
                          "किमर्थं ते संशयः? पृच्छतु!",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,

                        ),
                      ],
                      options: CarouselOptions(
                        height: 110,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 2.0,
                      ),
                    ),
                    SizedBox(height: 110),
                    Lottie.asset(
                      'assets/introduction_animation/Animation - 1700819444166.json',
                      height: 400,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 160.0, // Adjust the bottom margin as needed
                child: SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                      // Your mic button action
                    },
                    child: Icon(
                      Icons.mic,
                      size: 40,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'Faculties',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.voice_chat),
            label: 'VoiceBot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.toc_outlined),
            label: 'Tools',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            _navigateToPage(context, TeamInfo());
          } else if (index == 1) {
            // Navigate to your desired page
            _navigateToPage(context, MyHomePage());
          } else if (index == 2) {
            // Navigate to your desired page
            _navigateToPage(context, HomePage());
          }
        },
      ),
    );
  }
}
