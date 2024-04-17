import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/custom_card.dart';
import 'package:frontend/model/game.dart';
import 'package:frontend/presentation/widgets/admin_game_card.dart';
import 'package:frontend/presentation/widgets/dialogues.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("BetEbet"),
          leading: const Menu(
            names: [
              ["Home", '/admin'],
              ["Users", '/users'],
              ["Add Game", '/add_game'],
              ["Logout", '/login']
            ],
          )),
      body: GridView.count(
        crossAxisCount: 1,
        padding: const EdgeInsets.all(40.0),
        childAspectRatio: 8.0 / 10.0,
        children: const <Widget>[
          AGameCard(
              game: Game(
                  name: "Game 1",
                  image: "assets/game4.jpg",
                  publisher: "New Youk Times Best seller",
                  releaseDate: "2021-10-10")),
          AGameCard(
              game: Game(
            name: "Game 2",
            image: "assets/game2.jpg",
            publisher: "New Youk Times Best seller",
            releaseDate: "2021-10-10",
          )),
          AGameCard(
            game: Game(
              name: "Game 3",
              image: "assets/game3.jpg",
              publisher: "New Youk Times Best seller",
              releaseDate: "2021-10-10",
              rating: 4.5,
            ),
          ),
          AGameCard(
            game: Game(
                name: "Game 4",
                image: "assets/game4.jpg",
                publisher: "New Youk Times Best seller",
                releaseDate: "2021-10-10",
                rating: 4.5),
          ),
        ],
      ),
    );
  }
}
