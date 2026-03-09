import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // FlutterFire CLI generated
  );
  runApp(const BobonanApp());
}

class BobonanApp extends StatelessWidget {
  const BobonanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bobonan Community Report',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}