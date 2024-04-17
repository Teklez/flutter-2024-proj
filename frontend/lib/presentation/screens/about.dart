import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
          },
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AspectRatio(
                aspectRatio: 14 / 14,
                child: Image(
                  image: AssetImage(
                    "assets/logo.jpg",
                  ),
                ),
              ),
              Text(
                  "About BetEbet is a betting platform that allows users to bet on various games."),
              Text("Version 1.0.0"),
            ],
          ),
        ),
      ),
    );
  }
}
