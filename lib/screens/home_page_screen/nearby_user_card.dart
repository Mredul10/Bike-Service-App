import 'package:flutter/material.dart';

class NearbyUserCard extends StatelessWidget {
  final String? title;
  final String? image;
  const NearbyUserCard({super.key, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 54,
          width: (MediaQuery.of(context).size.width / 5) -24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
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
              fontWeight: FontWeight.w400,
              fontSize: 13),
        ),
      ],
    );
  }
}