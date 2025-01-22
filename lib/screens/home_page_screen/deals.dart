import 'package:bike_service_app/screens/home_page_screen/deals_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    List deals = [
   {
    "image": "assets/images/healmate1.png",
    "title": "Racing Dual Visor Helmet",
    "discountedPrice": "\$4079",
    "originalPrice": "\$5000",
    "discount": "20% Off",
    "ratings": "4.8(212)",
   },
   {
    "image": "assets/images/healmate2.png",
    "title": "Aerodynamic Helmet",
    "discountedPrice": "\$2799",
    "originalPrice": "\$3499",
    "discount": "20% Off",
    "ratings": "5.8(212)",
    },
  ];
    return Column(
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Deals of the Day',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                ],
            ),
             SizedBox(height: 10,),
            SizedBox(
              height: 170,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return DealsCard(
                    image: deals[index]["image"],
                    title: deals[index]["title"],
                    discountedPrice: deals[index]["discountedPrice"],
                    orginalprice: deals[index]["originalPrice"],
                    discount: deals[index]["discount"],
                    ratings: deals[index]["ratings"],
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