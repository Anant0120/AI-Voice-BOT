import 'package:flutter/material.dart';
import 'dart:io';
import 'package:lottie/lottie.dart';
import 'IC_database.dart';
import 'datas.dart';
import 'constants.dart';
import 'detailsview.dart';


import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {

  bool textScanning = false;

  XFile? imageFile;

  String scannedText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text("IC Scanner "),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (textScanning) const CircularProgressIndicator(),
                    if (!textScanning && imageFile == null)
                      Lottie.asset(
                        'assets/introduction_animation/Animation - 1700885205032.json',// for Animation
                        height:500,

                      ),
                    if (imageFile != null) Image.file(File(imageFile!.path)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.grey,
                                shadowColor: Colors.grey[400],
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              onPressed: () {
                                getImage(ImageSource.gallery);
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.image,
                                      size: 30,
                                    ),
                                    Text(
                                      "Gallery",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.grey[600]),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.grey,
                                shadowColor: Colors.grey[400],
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              onPressed: () {
                                getImage(ImageSource.camera);
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      size: 30,
                                    ),
                                    Text(
                                      "Camera",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.grey[600]),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        scannedText,
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                )),
          )),
    );
  }

//THIS FUNCTION IS USER FOR PROCESSING THE IMAGE USING OCR PROVIDED BY GOOGLE ML KIT.

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        textScanning = true;
        imageFile = pickedImage;
        setState(() {});
        getRecognisedText(pickedImage);
      }
    } catch (e) {
      textScanning = false;
      imageFile = null;
      scannedText = "Error occured while scanning";
      setState(() {});
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = GoogleMlKit.vision.textDetector();
    RecognisedText recognisedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    scannedText = "";
    scannedText = "";
    for (TextBlock block in recognisedText.blocks) {
      for (TextLine line in block.lines) {
        scannedText = scannedText + line.text + "\n";
      }
    }
    if (scannedText.contains("74")&& (scannedText.contains("08") || scannedText.contains("O8"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[0],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("04") || scannedText.contains("O4"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[1],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("00") || scannedText.contains("OO"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[2],
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
    }

    if ((scannedText.contains("7 4")|| scannedText.contains("74")) && (scannedText.contains("06") || scannedText.contains("O6"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[6],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("86") || scannedText.contains("S6"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[5],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("32") || scannedText.contains("32"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[3],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("36") || scannedText.contains("3S"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[4],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("96") || scannedText.contains("9S"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[8],
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
    }

    if (scannedText.contains("40")&& (scannedText.contains("75") || scannedText.contains("7S"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[7],
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
    }
    if (scannedText.contains("74")&& (scannedText.contains("50") || scannedText.contains("5O"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[9],
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
    }

    if (scannedText.contains("74")&& (scannedText.contains("10") || scannedText.contains("1O"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[10],
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
    }
    if (scannedText.contains("555")&& (scannedText.contains("NE") || scannedText.contains("555"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[10],
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
    }

    if (scannedText.contains("74")&& (scannedText.contains("20") || scannedText.contains("2O"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[11],
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
    }

    if (scannedText.contains("LM")&& (scannedText.contains("741") || scannedText.contains("7 41"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[14],
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
    }

    if (scannedText.contains("LM")&& (scannedText.contains("386") || scannedText.contains("306"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[17],
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
    }

    if (scannedText.contains("LM")&& (scannedText.contains("7805") || scannedText.contains("78O5"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[18],
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
    }

    if (scannedText.contains("LM")&& (scannedText.contains("324") || scannedText.contains("32 4"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[16],
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
    }

    if (scannedText.contains("LM")&& (scannedText.contains("358") || scannedText.contains("3 58"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[15],
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
    }

    if (( scannedText.contains("8") && scannedText.contains("051") || scannedText.contains("O 51") || scannedText.contains("51"))) {
      Navigator.push(
          context, PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, a, b) => DetailsView(
          icInfo: Ics[19],
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
    }


    textScanning = false;
    setState(() {});
  }




  @override
  void initState() {
    super.initState();
  }
}