import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String? title;
  final String? image;
  const RecommendationCard({super.key, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: (MediaQuery.of(context).size.width / 3) - 24,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title!,
          style: TextStyle(
              color: Color(0xFF666666),
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
      ],
    );
  }
}
