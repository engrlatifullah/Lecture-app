import 'package:flutter/material.dart';

import '../../../common/post_card.dart';

class Pdf extends StatelessWidget {
  const Pdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3),
                itemBuilder: (_, index) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF4c4d4e),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset('assets/Image.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "Computer",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700,color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            "Ovidia Yu",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
