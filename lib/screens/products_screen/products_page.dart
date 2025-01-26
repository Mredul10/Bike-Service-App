import 'package:bike_service_app/screens/products_screen/products_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    List products = [
  {
    "image": "assets/images/P1.png",
    "title": "My Tours",
  },
  {
    "image": "assets/images/P2.png",
    "title": "My Rides",
  },
  {
    "image": "assets/images/P3.png",
    "title": "Settings",
  },
  {
    "image": "assets/images/P4.png",
    "title": "Service",
  },
  {
    "image": "assets/images/P5.png",
    "title": "Digi Docs",
  },
  {
    "image": "assets/images/P6.png",
    "title": "Expert Visit",
  },
  {
    "image": "assets/images/P7.png",
    "title": "P-Location",
  },
  {
    "image": "assets/images/P8.png",
    "title": "Find Location ",
  },
  {
    "image": "assets/images/P9.png",
    "title": "Maintenance",
  },
  {
    "image": "assets/images/P10.png",
    "title": "Troubleshoot",
  },
  {
    "image": "assets/images/P11.png",
    "title": "Loyalty",
  },
  {
    "image": "assets/images/P12.png",
    "title": "Vehicle Info",
  },
];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text('Products',style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white,),),
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
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                      'Bike Name',
                      style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black,),
                    ),
                    Text(
                      'Change',
                      style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500, color: Color(0xFF584CF4),),
                    ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 215,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 124,
                            width: 166,
                            child: Image.asset('assets/images/bike.png',fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 19,),
                          SizedBox(
                            width: 138,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF584CF4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/mobile.png',height: 20,width: 19,),
                                  SizedBox(width: 10,),
                                  Text(
                                'Connect',
                                style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600, color: Colors.white,),
                              ),
                                ],
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 23,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                              '570 km',
                              style:GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w500, color: Color(0xFF584CF4),),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Distance',
                              style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.black,),
                            ),
                          ],
                          ),
                          SizedBox(width: 49,),
                          Column(
                            children: [
                              Text(
                              '65 kmph',
                              style:GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w500, color: Color(0xFF584CF4),),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Top Speed',
                              style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.black,),
                            ),
                          ],
                          ),
                          SizedBox(width: 49,),
                          Column(
                            children: [
                              Text(
                              '154',
                              style:GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w500, color: Color(0xFF584CF4),),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Rides',
                              style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.black,),
                            ),
                          ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(8),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 4,
                     crossAxisSpacing: 14,
                     mainAxisSpacing: 20,
                     childAspectRatio: 0.65),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                   return ProductsCard(
                     image: products[index]["image"],
                     title: products[index]["title"],
                   );
                 },
                ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Color(0XFF584CF4),
        unselectedItemColor:Color(0xFF666666),
        currentIndex: 1,
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