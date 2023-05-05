import 'package:flutter/material.dart';

import '../../../common/post_card.dart';

class UnfinishedLecture extends StatelessWidget {
  const UnfinishedLecture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Lectures",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (_, index) {
              return PostCard();
            }),
          ),
        ],
      ),
    );
  }
}


