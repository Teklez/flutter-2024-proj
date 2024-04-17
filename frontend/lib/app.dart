import 'package:flutter/material.dart';
import 'package:frontend/presentation/screens/game_add.dart';
import 'package:frontend/presentation/screens/login.dart';
import 'package:frontend/presentation/screens/home.dart';
import 'package:frontend/presentation/screens/register.dart';
import 'package:frontend/presentation/screens/admin_page.dart';
import 'package:frontend/presentation/screens/review.dart';

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
        '/register': (BuildContext context) => const RegistrationPage(),
        '/review': (BuildContext context) => const ReviewPage(),
        '/admin': (BuildContext context) => const AdminPage(),
        '/add_game': (BuildContext context) => const AddGameForm(
              buttonName: "Add",
            ),
      },
      theme: ThemeData.dark(),
    );
  }
}
