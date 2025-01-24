import 'package:bike_service_app/screens/home_page_screen/deals.dart';
import 'package:bike_service_app/screens/home_page_screen/nearby_user_card.dart';
import 'package:bike_service_app/screens/shop_page_screen/categories_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text('Shop',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white,),),
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F2FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                         children: [
                          Image.asset('assets/images/Pin.png',height: 16,width: 15,),
                          SizedBox(width: 8,),
                           Text(
                           '19-A, Nehru Colony, Dehradun',
                           style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500, color: Color(0xFF666666),),
                           ),
                         ],
                       ),
                     Icon(Icons.arrow_back_ios,size: 12,color: Color(0xFF666666),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                           Text('Categories',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16,),), 
                          Text('View All>',style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF584CF4),),) ,
                        ],
                       ),
                    ),
                 SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: SizedBox(
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
                        width: 15,
                       );
                      },
                    ),
                   ),
                 ),
                 SizedBox(height:30,),
                  Deals(),
                  SizedBox(height:30,),
                  Deals(),
                 ],
                ),
              ),
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
      showUnselectedLabels: true,
        selectedItemColor: Color(0XFF584CF4),
        unselectedItemColor: Color(0xFF666666),
        currentIndex: 0,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Care'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Community'),

      ],),
    );
  }
}