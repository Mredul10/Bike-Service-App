import 'package:bike_service_app/screens/shop_page_screen/shop_deals_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopDeals extends StatelessWidget {
  const ShopDeals({super.key});

  @override
  Widget build(BuildContext context) {
    List deals = [
   {
    "image": "assets/images/Shop_deals01.png",
    "title": "Infinity Bike Accessories",
   },
   {
    "image": "assets/images/Shop_deals02.png",
    "title": "New Range Trends",
    },
  ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Deals of the Day',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                  Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                  ],
              ),
        ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: SizedBox(
                height: 170,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return ShopDealsCard(
                      image: deals[index]["image"],
                      title: deals[index]["title"],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                ),
              ),
            ),
      ],
    );
  }
}