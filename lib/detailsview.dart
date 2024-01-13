import 'package:flutter/material.dart';
import 'datas.dart';
import 'constants.dart';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchWebsite(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


class DetailsView extends StatefulWidget {
  final ICInfo? icInfo;

  const DetailsView({Key? key, this.icInfo}) : super(key: key);

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final FlutterTts flutterTts = FlutterTts();

  bool _isSpeaking = false;


  Future _speak(String text) async {
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.7);
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  Future _stop() async {
    await flutterTts.stop();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 32),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 300,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchWebsite(widget.icInfo!.website.toString());
                        },
                        child: Text(
                          widget.icInfo!.name.toString(),
                          style: TextStyle(
                              fontSize: 55,
                              fontFamily: 'Avenir',
                              color: primaryTextColor,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        "Integrated Circuits",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Avenir',
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.icInfo!.description.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: 'Avenir',
                                      color: contentTextColor,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                  maxLines: 60,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  if (_isSpeaking) {
                                    await _stop();
                                  } else {
                                    await _speak(widget.icInfo!.description.toString());
                                  }
                                  setState(() {
                                    _isSpeaking = !_isSpeaking;
                                  });
                                },
                                icon: Icon(
                                  _isSpeaking ? Icons.stop : Icons.volume_up,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Avenir',
                            color: contentTextColor,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                        maxLines: 40,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.icInfo!.images!.length,
                          itemBuilder: (context, index) {
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    widget.icInfo!.images![index],
                                    fit: BoxFit.cover,
                                  )),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              Positioned(
                  right: -30,
                  child: Hero(
                      tag: widget.icInfo!.position,
                      child: Image.asset(widget.icInfo!.iconImage.toString()))),
              Positioned(
                  top: 60,
                  left: 32,
                  child: Text(
                    widget.icInfo!.position.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 247,
                        color: Colors.grey.withOpacity(0.2)),
                  )),

            ],
          )),
    );
  }
}