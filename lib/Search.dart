import 'package:flutter/material.dart';
import 'post_a_job.dart';
import 'Notifications.dart';
import 'principale.dart';
import 'message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Search',
      home: Search(),
    );
  }
}
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}
class _SearchState extends State<Search> {
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
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
              color: const Color(0xff003f5f),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Ajouter la logique pour annuler la recherche
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                            ),
                            child: const Text('Cancel', style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
              label: 'Notifications',
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
