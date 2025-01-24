import 'package:bike_service_app/screens/home_page_screen/nearby_user_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List categoriesImage = [
      'assets/images/Helmets.png',
      'assets/images/Urban Wear.png',
      'assets/images/Riding Gear.png',
      'assets/images/Accessories.png',
      'assets/images/App Upgrades.png',
    ];
    List categoriesTitle = [
      'Helmets',
      'Urban Wear',
      'Riding Gear',
      'Accessories',
      'App Upgrades',
    ];
    return Column(
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 90,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NearbyUserCard(
                    image: categoriesImage[index],
                    title: categoriesTitle[index],
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