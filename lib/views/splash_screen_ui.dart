// ignore_for_file: prefer_const_constructors


import 'package:dti_flutter_project_02/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState(){
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      ()=>Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  '🎇DTI APP 01🎇',
                  style: GoogleFonts.sedgwickAve(
                    fontSize: MediaQuery.of(context).size.width * 0.075,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'V.1.0.0',
                  style: GoogleFonts.kanit(
                    color: Color.fromARGB(194, 125, 125, 125),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  'Create by Xenonz DTI-SAU',
                  style: GoogleFonts.kanit(
                    color: Color.fromARGB(194, 125, 125, 125),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
