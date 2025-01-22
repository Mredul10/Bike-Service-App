import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsCard extends StatelessWidget {
  final String? eventTitle;
  final String? eventImage;
  const EventsCard({super.key, this.eventTitle, this.eventImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 90,
              width: (MediaQuery.of(context).size.width / 2) - 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(eventImage!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/images/Avater1.png'),
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/images/Avater2.png'),
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/images/Avater3.png'),
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Text(
                      '+12',
                      style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          eventTitle!,
          style: TextStyle(
            color: Color(0xFF666666),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
