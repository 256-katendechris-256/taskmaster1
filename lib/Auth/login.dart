import 'package:flutter/material.dart';
import 'package:homework/Auth/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
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
                      image: AssetImage('images/tm.png'), fit: BoxFit.fitWidth),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20), // Adding curved edges
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.3),
                    )
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(21, 16, 21, 16), // Adjusted margin for spacing
                width: w,
                child: SingleChildScrollView(
                  // Wrap with SingleChildScrollView
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 16, 20, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text('Welcome',
                                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20), // Added padding for text fields
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.3),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    contentPadding:
                                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20), // Added padding for text fields
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.3),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    contentPadding:
                                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20), // Added padding for login button
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add login functionality
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ), // Text for login button
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color for login button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30), // Rounded corners for login button
                              ),
                            ),
                          ),
                        ),
                      ),

                      Center(
                        // Center the "Login with..." text
                        child: Text(
                          'or',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Implement login with Gmail
                            },
                            icon: Icon(Icons.email_outlined,
                              color: Colors.white, ),
                            label: Text(
                              'Google',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Implement login with phone contact
                            },
                            icon: Icon(
                              Icons.phone_outlined,
                              color: Colors.white, // Set phone icon color to white
                            ),
                            label: Text(
                              'Phone ',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(
                        // Center the "Login with..." text
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        // Center the "Sign up" text
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> SignUp() ));
                            // Handle the sign-up action
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1, // Line height
                                width: 30, // Line width
                                color: Colors.black, // Line color
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10), // Padding between lines and text
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(fontSize: 16, color: Colors.black),
                                ),
                              ),
                              Container(
                                height: 1, // Line height
                                width: 30, // Line width
                                color: Colors.black, // Line color
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
