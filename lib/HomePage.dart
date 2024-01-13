import 'package:flutter/material.dart';

import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'datas.dart';
import 'constants.dart';
import 'detailsview.dart';

class Home extends StatefulWidget {
 // const HomePage({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const [
                          Text(
                            'Explore',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 40,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          DropdownButton(
                            items: const [
                              DropdownMenuItem(
                                child: Text(
                                  'Integrated Circuit',
                                  style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 24,
                                      color: Color(0x7cdbf1ff),
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ],
                            onChanged: (value) {},
                            icon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              //child: Image.asset("assets/drop_down_icon.png"),
                            ),
                            underline: const SizedBox(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Swiper(
                      itemCount: Ics.length,
                      fade: 0.3,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              activeSize: 20,
                              activeColor: Colors.yellow.shade300,
                              space: 5)),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (context, a, b) => DetailsView(
                                    icInfo: Ics[index],
                                  ),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                ));
                          },
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  const SizedBox(
                                    height: 100,
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32)),
                                    elevation: 8,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const SizedBox(
                                            height: 100,
                                          ),
                                          Text(
                                            Ics[index].name.toString(),
                                            style: const TextStyle(
                                                fontSize: 40,
                                                fontFamily: 'Avenir',
                                                color: Color(0xff47455f),
                                                fontWeight: FontWeight.w900),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Integrated Circuits",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontFamily: 'Avenir',
                                                color: primaryTextColor,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.left,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 32.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Avenir',
                                                      color: secondaryTextColor,
                                                      fontWeight: FontWeight.w400),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_rounded,
                                                  color: secondaryTextColor,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Hero(
                                  tag: Ics[index].position,
                                  child: Image.asset(
                                      Ics[index].iconImage.toString()))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

