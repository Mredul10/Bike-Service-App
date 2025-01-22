import 'package:bike_service_app/screens/care_page_screen/recommendation_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      "assets/images/spark_plug.png",
      "assets/images/clutch_shoe.png",
      "assets/images/hose_fuel.png",
    ];
    List title = [
      "Spark Plug",
      "Clutch Shoe",
      "Hose Fuel",
    ];
    return Column(
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Care Recommendations',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 150,
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return RecommendationCard(
                    image: image[index],
                    title: title[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
      ],
    );
  }
}