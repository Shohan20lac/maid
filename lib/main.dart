import 'package:firebase_core/firebase_core.dart';
import 'package:maid/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:maid/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: "Maid", options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true, home: HomePage());
  }
}
