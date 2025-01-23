import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Icon(Icons.arrow_back_ios,),
              SizedBox(height: 47,),
                Container(
                  width: 340,
                  child: Text('OTP Verification',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xFF584CF4),),textAlign: TextAlign.center),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 340,
                  child: Text('Please enter the code we have sent to your phone number 7500180475',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 131, 128, 128),),textAlign: TextAlign.center),
                ),
                SizedBox(height: 46,),
                Text('OTP',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 131, 128, 128),),),
              SizedBox(height: 15,),
              Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 47,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0XFFF3F2FF),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Text('8',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      alignment: Alignment.center,
                      height: 47,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0XFFF3F2FF),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Text('4',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      alignment: Alignment.center,
                      height: 47,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0XFFF3F2FF),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Text('6',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      alignment: Alignment.center,
                      height: 47,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0XFFF3F2FF),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Text('3',style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn’t receive anything?',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 131, 128, 128),),),
                  SizedBox(width: 5,),
                  Text('Resend Code',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF584CF4),),),
                ],
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
                  'Verify & Proceed',
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