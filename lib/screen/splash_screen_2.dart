import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreenState2();
}

class _SplashScreenState2 extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.9,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: screenSize.height * 0.07,
              ),
              Container(
                alignment: Alignment.center,
                width: screenSize.width,
                height: screenSize.height * 0.2,
                child: Text(
                  'Let’s fulfil your\ndaily needs with\nus',
                  style: GoogleFonts.dmSans(
                    fontSize: screenSize.height * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.1),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[600],
                        foregroundColor: Colors.white,
                        elevation: 10.0,
                        fixedSize: const Size(201, 50)),
                    child: Text('Get Started',
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
                  Row(
                    children: [
                      Image.asset(
                                    'assets/images/bg.png',
                                    height: screenSize.height * 0.353,
                                    fit: BoxFit.fill,
                                  ),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
