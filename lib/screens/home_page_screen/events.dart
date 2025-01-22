import 'package:bike_service_app/screens/home_page_screen/events_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    List eventImage = [
      "assets/images/manali.png",
      'assets/images/gujrat.png',
      'assets/images/kasmir.png',
    ];
    List eventTitle = [
      'Shimla to Manali',
      'Goa to Gujarat',
      'Kashmir Trip',
    ];
    return Column(
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upcoming Events',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                ],
            ),
             SizedBox(height: 10,),
             SizedBox(
              height: 130,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return EventsCard(
                    eventImage: eventImage[index],
                    eventTitle: eventTitle[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
      ],
    );
  }
}