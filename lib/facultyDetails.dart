import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class TeamInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TeamInfoState();
  }

}

class TeamInfoState extends State<TeamInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      //backgroundColor: gradientStartColor, gradientEndColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [gradientStartColor, gradientEndColor],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const SizedBox(height: 50,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: ()=>Navigator.pop(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Faculty Details',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              //PROF. (DR.) SHRIPAD SUBHASHRAO BHATLAWANDE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/SHRIPAD-BHATLAWANDE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (DR.) SHRIPAD SUBHASHRAO BHATLAWANDE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //PROF. (DR.) VIJAY MAHADEO MANE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/VIJAY-MANE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (DR.) VIJAY MAHADEO MANE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Associate Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //PROF. MILIND VASANTRAO KAMBLE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/MILIND-KAMBLE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. MILIND VASANTRAO KAMBLE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (DR.) SIDDHARTH BHAGWAN BHORGE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/SIDDHARTH-BHORGE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (DR.) SIDDHARTH BHAGWAN BHORGE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (SMT.) VAISHALI SIDDHARTH JABADE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/VAISHALI-JABADE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (SMT.) VAISHALI SIDDHARTH JABADE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (DR.) ABHAY MADHUKAR CHOPDE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/ABHAY-CHOPDE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (DR.) ABHAY MADHUKAR CHOPDE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Associate Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (SMT.) RUPALI SHRIPAD GAVARASKAR
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/RUPALI-GAVARASKAR'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (SMT.) RUPALI SHRIPAD GAVARASKAR',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. MILIND BABURAO TIRMARE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/MILIND-TIRMARE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. MILIND BABURAO TIRMARE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Associate Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (SMT.) MRUNAL MUKUND SHIDORE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/MRUNAL-SHIDORE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (SMT.) MRUNAL MUKUND SHIDORE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//DR. (SMT.) ASHWINEE PRAVIN PULUJKAR
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/ASHWINEE-BARBADEKAR'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'DR. (SMT.) ASHWINEE PRAVIN PULUJKAR',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Associate Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (SMT.) SHITAL VIJAYKUMAR PAWAR
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/SHITAL-PAWAR'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (SMT.) SHITAL VIJAYKUMAR PAWAR',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (DR.) AJAY KESHAV TALELE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/AJAY-TALELE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (DR.) AJAY KESHAV TALELE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//DR. (SMT.) SANGEETA VISHWAS KURUNDKAR
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/SANGEETA-KURUNDKAR'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'DR. (SMT.) SANGEETA VISHWAS KURUNDKAR',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Associate Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. SUHAS BALKRISHNA BHISE
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/SUHAS-BHISE'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. SUHAS BALKRISHNA BHISE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Assistant Prof.& Campus Manager',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//PROF. (DR.) VIJAY DATTATRAY GAIKWAD
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () => launch('https://facultyprofile.vit.edu/profile/VIJAY-GAIKWAD'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: gradientStartColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded( // Add the Expanded widget here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'PROF. (DR.) VIJAY DATTATRAY GAIKWAD',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Associate Professor',style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),),
                              Text(
                                'Know More >',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}