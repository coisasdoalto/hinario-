import 'package:flutter/material.dart';
import 'package:hymns/home/home.dart';
import 'package:hymns/search/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hinario',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/search': (context) => const Search(),
      },
    );
  }
}
