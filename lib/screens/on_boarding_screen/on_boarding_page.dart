import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/images/Navigation_logo.png',width: 180, height: 234,)),
              SizedBox(height: 93,),
              Container(width: 340,child: Text('Assist with Navigation',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w600, color: Color(0xFF584CF4),),textAlign: TextAlign.center),),
              SizedBox(height: 24,),
              Container(
                width: 340,
                child: Text('Use real-time route information to schedule your ride.',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400, color: Color.fromARGB(255, 131, 128, 128),),textAlign: TextAlign.center,),),
                SizedBox(height: 24,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Color(0xFF584CF4)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 131, 128, 128)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 131, 128, 128)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 57,),
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF584CF4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text(
                  'Next',
                  style:GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600, color: Colors.white,),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}