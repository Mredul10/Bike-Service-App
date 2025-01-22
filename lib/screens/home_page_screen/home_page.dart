import 'package:bike_service_app/screens/home_page_screen/deals.dart';
import 'package:bike_service_app/screens/home_page_screen/events.dart';
import 'package:bike_service_app/screens/home_page_screen/nearby_user.dart';
import 'package:bike_service_app/screens/home_page_screen/service.dart';
import 'package:bike_service_app/screens/home_page_screen/service_packege_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text('Home',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white,),),
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
          NearbyUser(),
            SizedBox(height:10,),
            Deals(),
            SizedBox(height: 20,),
            Events(),
            SizedBox(height: 10,),
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
                  return ServicePackegeCard(
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
        selectedItemColor: Color(0XFF584CF4),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
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