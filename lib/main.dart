import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hymns/core/dependency_injection/di.dart';
import 'package:hymns/presentation/home/home.dart';
import 'package:hymns/presentation/search/search.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/firebase/firebase_options.dart';

GetIt locator = GetIt.instance;
Future<void> main() async {
  Injector()();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
