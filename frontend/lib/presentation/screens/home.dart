import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/custom_card.dart';
import 'package:frontend/model/game.dart';

import 'package:frontend/presentation/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 47, 47),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter Button');
            },
          )
        ],
        title: const Text(
          "BetEbet",
          style: TextStyle(color: Colors.amber),
        ),
      ),
      drawer: const MenuDrawer(
        menuItems: [
          ["Home", "/"],
          ["About", "/about"],
          ["Logout", "/login"],
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 10.0,
        children: const <Widget>[
          GameCard(
              game:
                  Game(name: "Game 1", image: "assets/game4.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 2", image: "assets/game2.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 3", image: "assets/game3.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 4", image: "assets/game4.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 5", image: "assets/game5.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 6", image: "assets/game6.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 7", image: "assets/game7.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 8", image: "assets/game8.jpg", rating: 4.5)),
          GameCard(
              game:
                  Game(name: "Game 9", image: "assets/game9.jpg", rating: 4.5)),
          GameCard(
              game: Game(
                  name: "Game 10", image: "assets/game10.jpg", rating: 4.5)),
        ],
      ),
    );
  }
}
