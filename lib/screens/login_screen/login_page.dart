import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Container(
                width: 340,
                child: Text('Enter your phone number',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xFF584CF4),),textAlign: TextAlign.center),
              ),
              SizedBox(height: 20,),
              Container(
                width: 340,
                child: Text('Please confirm your country code and enter your phone number.',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 131, 128, 128),),textAlign: TextAlign.center),
              ),
              SizedBox(height: 46,),
              Text('Country',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 131, 128, 128),),),
              SizedBox(height: 15,),
              Container(
                width: 340,
                height: 48,
                decoration: BoxDecoration(
                color: Color(0XFFF3F2FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Flag.png',height: 22,width: 32,),
                        SizedBox(width: 19,),
                        Text('India',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black,),)
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 131, 128, 128), size: 16),
                  ],
                ),
              ),
              ),
              SizedBox(height: 30,),
              Text('Phone Number',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 131, 128, 128),),),
              SizedBox(height: 15,),
              Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFFF5F5FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    '+91',
                    style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black,),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '7500180475',
                        hintStyle: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
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