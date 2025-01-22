import 'package:bike_service_app/screens/care_page_screen/recommendation.dart';
import 'package:bike_service_app/screens/care_page_screen/services_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 


class CarePage extends StatefulWidget {
  const CarePage({super.key});

  @override
  State<CarePage> createState() => _CarePageState();
}

class _CarePageState extends State<CarePage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text('Care',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white,),),
        actions: [
          IconButton( 
            icon: Icon(Icons.search,color: Colors.white,), 
            onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white,), 
              onPressed: () {},
              ),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.white,), 
              onPressed: () {},
              ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bike name',style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14,),), 
                Text('Change',style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF584CF4),),) ,
                ],
            ),
            SizedBox(height: 20,),
            Recommendation(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Buy Service Packages',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.15),
                     itemCount: services.length,
                     itemBuilder: (context, index) {
                  return ServicesCard(
                    image: services[index]["image"],
                    title: services[index]["title"],
                    discountedPrice: services[index]["discountedPrice"],
                    orginalprice: services[index]["originalPrice"],
                    discount: services[index]["discount"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Color(0XFF584CF4),
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Care"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Community"),

      ],),
    );
  }
}