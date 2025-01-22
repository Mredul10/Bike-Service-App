import 'package:bike_service_app/screens/home_page_screen/service_packege_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    List services = [
  {
    "image": "assets/images/1.png",
    "title": "Annual Maintenance",
    "discountedPrice": "\$900",
    "originalPrice": "\$1000",
    "discount": "10% Off",
  },
  {
    "image": "assets/images/2.png",
    "title": "Teflon Coating",
    "discountedPrice": "\$1350",
    "originalPrice": "\$1500",
    "discount": "10% Off",
  },
  {
    "image": "assets/images/3.png",
    "title": "Chains",
    "discountedPrice": "\$900",
    "originalPrice": "\$1000",
    "discount": "15% Off",
  },
  {
    "image": "assets/images/4.png",
    "title": "Brake Pad",
    "discountedPrice": "\$1350",
    "originalPrice": "\$1500",
    "discount": "15% Off",
  },
];
    return Column(
      children: [
        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Buy Service Packages',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                  Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                  ],
              ),
              SizedBox(height: 10,),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.15),
                     itemCount: services.length,
                     itemBuilder: (context, index) {
                  return ServicePackegeCard(
                    image: services[index]["image"],
                    title: services[index]["title"],
                    discountedPrice: services[index]["discountedPrice"],
                    orginalprice: services[index]["originalPrice"],
                    discount: services[index]["discount"],
                  );
                },
              ),
      ],
    );
  }
}