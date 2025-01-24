import 'package:bike_service_app/screens/home_page_screen/nearby_user_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearbyUser extends StatelessWidget {
  const NearbyUser({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      "assets/images/Ankita.png",
      'assets/images/Pankaj.png',
      'assets/images/Manisha.png',
      "assets/images/Suresh.png",
      'assets/images/ankur.png',
      'assets/images/Deepak.png',
    ];
    List title = [
      'Ankita',
      'Pankaj',
      'Manisha',
      'Suresh',
      'Ankur',
      'Deepak',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nearby Users',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                  Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                  ],
              ),
        ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: SizedBox(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return NearbyUserCard(
                      image: image[index],
                      title: title[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
            ),
      ],
    );
  }
}