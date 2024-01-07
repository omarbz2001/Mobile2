import 'package:flutter/material.dart';
import 'post_a_job.dart';
import 'Profile.dart';
import 'job_detail.dart';
import 'Notifications.dart';
import 'Search.dart';
import 'message.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Principale',
      home: principale(),
    );
  }
}
class principale extends StatefulWidget {
  const principale({super.key});

  @override
  _PrincipaleState createState() => _PrincipaleState();
}


class _PrincipaleState extends State<principale> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const principale(),
    const post_a_job(),
    const Search(),
    const message(),
    const Notifications(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: double.infinity,
                height: 130,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      // profileRsS (21:843)
                      left: 235,
                      top: 40,
                      child: Align(
                        child: SizedBox(
                          width: 130,
                          height: 50,
                          child: Text(
                            'FREELANSI',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 2.1,
                              color: Colors.blue.shade900,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // fJU (21:897)
                      left: 12,
                      top: 15,
                      child: Align(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(64),
                            child: GestureDetector(
                              onTap: () {
                                // Navigate to the second screen when the image is tapped
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Profile()),
                                );
                              },
                              child: Image.asset(
                                'android/asset/img/avatar.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),

                width: double.infinity,
                height: 40,
                child: Stack(
                  children: [
                    Positioned(
                      left:40,
                      top: 20,
                      child: Container(
                        // mostrecentLiQ (7:400)
                        margin:  const EdgeInsets.fromLTRB(0, 0, 83, 2),
                        child:
                        const Text(
                          'Most recent',
                          style:  TextStyle (
                            fontFamily: 'Poppins',
                            fontSize:  20,
                            fontWeight:  FontWeight.w400,
                            height:  0.3333333333,
                            letterSpacing:  0.75,
                            color:  Color(0xff003f5f),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left:220,
                      top: 20,
                      child: Container(
                        // mostrecentLiQ (7:400)
                        margin:  const EdgeInsets.fromLTRB(0, 0, 83, 2),
                        child:
                        const Text(
                          'Best Matches',
                          style:  TextStyle (
                            fontFamily: 'Poppins',
                            fontSize:  20,
                            fontWeight:  FontWeight.w400,
                            height:  0.3333333333,
                            letterSpacing:  0.75,
                            color:  Color(0xff003f5f),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffdadada),
                              offset: Offset(0, 1),
                              blurRadius: 1.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 60,
                      child: Container(
                        child: const Text(
                          'Title',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 120,
                      child: Container(
                        child: const Text(
                          'Description',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 185,
                      child: Container(
                        child: const Text(
                          'Date',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 245,
                      child: Container(
                        child: const Text(
                          '12/11/2023',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 270,
                      child: GestureDetector(onTap: () {
                        // Navigate to the second screen when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const job_detail()),
                        );
                      },
                        child: Container(
                          child: const Text(
                            'see all >',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.3333333333,
                              letterSpacing: 0.5,
                              color: Color(0xff003f5f),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffdadada),
                              offset: Offset(0, 1),
                              blurRadius: 1.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 60,
                      child: Container(
                        child: const Text(
                          'Title',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 120,
                      child: Container(
                        child: const Text(
                          'Description',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 185,
                      child: Container(
                        child: const Text(
                          'Date',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 245,
                      child: Container(
                        child: const Text(
                          '12/11/2023',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.3333333333,
                            letterSpacing: 0.5,
                            color: Color(0xff003f5f),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 270,
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the second screen when the image is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const principale()),
                          );
                        },
                        child: Container(
                          child: const Text(
                            'see all >',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.3333333333,
                              letterSpacing: 0.5,
                              color: Color(0xff003f5f),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          // Handle navigation based on the selected index
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const principale()));

              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const post_a_job()));

              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Search()));

              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const message()));

              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()));
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications', // Modification ici
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xff003f5f),
        elevation: 10,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
