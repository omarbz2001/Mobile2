import 'package:flutter/material.dart';
import 'principale.dart';
import'auth.dart';

String username = '';
String email = '';
String password = '';
String confirmPassword = '';


class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      // image1uTz (29:753)
                      margin: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                      width: 400,
                      height: 85,
                      child: Image.asset(
                        'android/asset/img/freelance.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'acme',
                          color: Colors.blue.shade900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(40, 70, 0, 16),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // emailaddressobW (32:816)
                              margin: const EdgeInsets.fromLTRB(0, 0, 20, 17),
                              child: const TextField(
                                decoration: InputDecoration(
                                  labelText: 'username',
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),

                            Container(
                              // emailaddressobW (32:816)
                              margin: const EdgeInsets.fromLTRB(0, 10, 20, 17),
                              child: TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'example@gmail.com',
                                ),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  // Update the email variable when the user types
                                  email = value;
                                },
                              ),
                            ),
                            Container(
                              // emailaddressobW (32:816)
                              margin: const EdgeInsets.fromLTRB(0, 10, 20, 17),
                              child: TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                ),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  // Update the password variable when the user types
                                  password = value;
                                },
                              ),
                            ),
                            Container(
                              // emailaddressobW (32:816)
                              margin: const EdgeInsets.fromLTRB(0, 10, 20, 17),
                              child: TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Confirm Password',
                                  hintText: 'Confirm your password',
                                ),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  // Update the email variable when the user types
                                  confirmPassword = value;
                                },
                              ),
                            ),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.fromLTRB(90, 30, 0, 50),
                      width: double.infinity,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle2Btt (32:812)
                            left: 0,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 201,
                                height: 59,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to the second screen when the image is tapped
                                    _createUserAndNavigate(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xff284e7b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // loginndn (32:814)
                            left: 60,
                            top: 16,
                            child: Align(
                              child: SizedBox(
                                width: 80,
                                height: 27,
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1825,
                                    fontStyle: FontStyle.italic,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
  // Function to create a user using Firebase authentication
  Future<void> _createUserAndNavigate(BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email, // Replace with the actual email input value
        password: password, // Replace with the actual password input value
      );

      // If successful, navigate to the next screen (principale)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const principale()),
      );
    } catch (e) {
      print("Error creating user: $e");
      // Handle sign-up errors here
    }
  }
}
