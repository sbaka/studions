import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:studions/pages/login.dart';
import 'package:studions/pages/my_home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isUserLoggedIn = false;
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      isUserLoggedIn = !(user == null);
    });
    return MaterialApp(
      title: 'Studions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isUserLoggedIn ? const MyHomePage(title: 'Studions') : const LoginPage(),
    );
  }
}
