import 'package:ar_room_decor/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'signup_screen.dart';
import 'login_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Decor Fusion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade800),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );*/

    return MaterialApp(
      title: 'Decor Fusion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade800),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => const WelcomeScreen(),
        'registration_screen': (context) => const RegistrationScreen(),
        'login_screen': (context) => const LoginScreen(),
        'home_screen': (context) => const HomeScreen()
      },
    );
  }
}


