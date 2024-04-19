import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/model/game.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const searchResults = [
      Game(name: "game", image: "assets/game2.jpg", publisher: "publisher"),
      Game(name: "game", image: "assets/game10.jpg", publisher: "publisher"),
      Game(name: "game", image: "assets/game7.jpg", publisher: "publisher"),
      Game(name: "game", image: "assets/game8.jpg", publisher: "publisher"),
    ];
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 164, 160, 160),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 0.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults
                    .length, // Use the length of your game objects list
                itemBuilder: (context, index) =>
                    _buildSearchResultTile(searchResults[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // Replace with your image URL

  Widget _buildSearchResultTile(game) {
    return ListTile(
      leading: Container(
        width: 100,
        height: 100,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(game.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(game.name),
      subtitle: Text(game.publisher),
      trailing: const Row(
        mainAxisSize: MainAxisSize.min, // Condense trailing widgets
        children: [
          Text(
            "4.5",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Icon(
            Icons.star,
          ), // Replace with actual rating logic
        ],
      ),
    );
  }
}
