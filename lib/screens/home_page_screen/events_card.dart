import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  final String? eventTitle;
  final String? eventImage;
  const EventsCard({super.key, this.eventTitle, this.eventImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: (MediaQuery.of(context).size.width / 2) - 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: AssetImage(eventImage!),
                fit: BoxFit.cover
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          eventTitle!,
          style: TextStyle(
              color: Color(0xFF666666),
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
      ],
    );
  }
}