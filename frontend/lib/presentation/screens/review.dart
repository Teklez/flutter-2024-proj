import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/dialogues.dart';
import 'package:frontend/presentation/widgets/rating.dart';
import 'package:frontend/presentation/widgets/rating_Progress_Indicator.dart';
import 'package:frontend/presentation/widgets/user_review_card.dart';
import 'package:frontend/presentation/widgets/rating_page.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[700],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.home,
            ),
          )),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.dstATop,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/RussianRoulette.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Ratings and reviews are verified and are from people who use the same type of device that you use.",
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[350],
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            RatingProgressIndicator(
                              text: "5",
                              value: 1.0,
                            ),
                            RatingProgressIndicator(
                              text: "4",
                              value: 0.8,
                            ),
                            RatingProgressIndicator(
                              text: "3",
                              value: 0.6,
                            ),
                            RatingProgressIndicator(
                              text: "2",
                              value: 0.4,
                            ),
                            RatingProgressIndicator(
                              text: "1",
                              value: 0.8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const RatingStar(),
                  Text(
                    "12,345",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Rate this app',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Share you experience with us',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StarIcon(),
                        StarIcon(),
                        StarIcon(),
                        StarIcon(),
                        StarIcon(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 20),
                  UserReview(),
                  UserReview(),
                  UserReview(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.star),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RatingForm(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
