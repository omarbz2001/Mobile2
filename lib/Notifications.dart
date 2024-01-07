import 'package:flutter/material.dart';
import 'post_a_job.dart';
import 'principale.dart';
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
      title: 'Notifications',
      home: Notifications(),
    );
  }
}
class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  _NotifState createState() => _NotifState();
}
class _NotifState extends State<Notifications> {
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffadd4f3),
        appBar: AppBar(
          title: const Text(
            'Notifications', // Modification ici
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff003f5f),
            ),
          ),
          backgroundColor: const Color(0xffadd4f3),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(6),
              child: Text(
                'Freelansi',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003f5f),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 1,
              color: const Color(0xfff8f8f8),
            ),
            // Le reste du corps ici
          ],
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
      ),
    );
  }
}
