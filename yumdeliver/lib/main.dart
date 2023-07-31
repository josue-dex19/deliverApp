import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:yumdeliver/views/accueil.dart';
import 'package:yumdeliver/views/home.dart';
import 'package:yumdeliver/views/inscription.dart';
import 'package:yumdeliver/views/welcome.dart';

void main() async {
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
      routes: {
        '/welcome': (context) => const Welcome(),
        '/accueil': (context) => const Accueil(),
        '/inscription': (context) => Inscription(),
      },
    );
  }
}
