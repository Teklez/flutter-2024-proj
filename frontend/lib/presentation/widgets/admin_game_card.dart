import 'package:flutter/material.dart';
import 'package:frontend/model/game.dart';
import 'package:frontend/presentation/screens/review.dart';
import 'package:frontend/presentation/screens/game_add.dart';
import 'package:frontend/presentation/widgets/dialogues.dart';

class AGameCard extends StatelessWidget {
  final Game game;
  const AGameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18 / 14,
            child: Image.asset(
              game.image,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    game.name,
                    // style: theme.textTheme.labelLarge,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    game.publisher,
                    // style: theme.textTheme.labelLarge,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        game.releaseDate,
                        // style: theme.textTheme.labelLarge,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const EditDeleteDialogue(),
                    ],
                  ),
                  const SizedBox(height: 1.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
