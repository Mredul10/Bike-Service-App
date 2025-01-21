import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 


class CarePage extends StatefulWidget {
  const CarePage({super.key});

  @override
  State<CarePage> createState() => _CarePageState();
}

class _CarePageState extends State<CarePage> {
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
                Text('Bike name',), 
                Text('Change') ,
                ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Care Recommendations',), 
                Text('View All>') ,
                ],
            ),
          ],
        ),
      ),
    );
  }
}