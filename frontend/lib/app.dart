import 'package:flutter/material.dart';

import 'package:frontend/presentation/screens/login.dart';
import 'package:frontend/presentation/screens/home.dart';

class BetApp extends StatelessWidget {
  const BetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BetEbet',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => const HomePage(),
        '/register': (BuildContext context) => const HomePage(),
        '/review': (BuildContext context) => const HomePage(),
      },
      theme: ThemeData.dark(),
    );
  }
}
