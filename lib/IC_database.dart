import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import 'constants.dart';
import 'datas.dart';
import 'detailsview.dart';

class ICPage extends StatefulWidget {
  @override
  _ICPageState createState() => _ICPageState();
}

class _ICPageState extends State<ICPage> {
  List<ICInfo> filteredIcs = [];

  void searchICs(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredIcs = List.from(Ics);
      } else {
        filteredIcs = Ics.where((ic) {
          return ic.name != null &&
              ic.name.toString().toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  void initState() {
    filteredIcs = List.from(Ics);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
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
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: searchICs,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                color: Color(0x7cdbf1ff),
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 24,
                                  color: Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500,
                                ),
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (filteredIcs.isNotEmpty) // Add this condition
                  Container(
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Swiper(
                        itemCount: filteredIcs.length,
                        fade: 0.3,
                        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                        layout: SwiperLayout.STACK,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            activeSize: 15,
                            activeColor: Colors.yellow.shade300,
                            space: 1,
                          ),
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (context, a, b) => DetailsView(
                                    icInfo: filteredIcs[index],
                                  ),
                                  transitionsBuilder: (
                                      BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child,
                                      ) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                ),
                              );
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
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      elevation: 0,
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
                                              filteredIcs[index]
                                                  .name
                                                  .toString(),
                                              style: const TextStyle(
                                                fontSize: 40,
                                                fontFamily: 'Avenir',
                                                color: Color(0xff47455f),
                                                fontWeight: FontWeight.w900,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              "Integrated Circuit",
                                              style: TextStyle(
                                                fontSize: 23,
                                                fontFamily: 'Avenir',
                                                color: primaryTextColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 32.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Know more",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Avenir',
                                                      color: secondaryTextColor,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_rounded,
                                                    color: secondaryTextColor,
                                                    size: 18,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Hero(
                                  tag: filteredIcs[index].position,
                                  child: Image.asset(
                                    filteredIcs[index].iconImage.toString(),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
