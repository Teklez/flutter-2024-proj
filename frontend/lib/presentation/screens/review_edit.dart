import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/presentation/widgets/edit_delete_review.dart';
import 'package:frontend/presentation/widgets/rating.dart';

import 'package:readmore/readmore.dart';

class ReviewEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar review'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, "/review");
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/profile2.jpg"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text("Hanna A. ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[350])),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const RatingStar(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1 April 2024",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[350],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ReadMoreText(
                'The user interface of the app is quite intuitive, I was able to navigate and make play seamlesssly. Great job! ',
                trimLines: 1,
                style: const TextStyle(color: Colors.white),
                trimMode: TrimMode.Line,
                trimExpandedText: "show less",
                trimCollapsedText: "show more",
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    RatingStar(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                            labelText: "Write your review here...",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.black,
                            filled: true,
                          )),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
