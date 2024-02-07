import 'package:flutter/material.dart';
import 'package:homework/Auth/login.dart'; // Import the login page

class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    // Add delay to navigate to login page after 10 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()), // Navigate to login page
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tm.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(21, 16, 21, 16),
                width: w,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 16, 20, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      // Add content specific to SplashScreen1 here
                    ],
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
