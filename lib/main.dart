import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'welcome.dart';
import 'sign up.dart'; // Import your sign-up file

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Correction de la syntaxe du constructeur
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/sign in',
      routes: {
        //'/sign up': (context) =>  const sign_up(),
        '/sign in': (context) =>  SignIn(),
        //'/add_pet': (context) => const AddPet(),
        //'/pet_list': (context) =>  PetList(),
        //'/welcom': (context) =>  Welcome(),
        //'/signup': (context) =>  SingUpScreen(),
        //'/map': (context) => const CurrentLocationScreen(),
      },
    );
  }
}
