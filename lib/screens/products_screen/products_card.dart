import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsCard extends StatelessWidget {
  final String? image;
  final String? title;

  const ProductsCard({super.key, required this.image, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 62,
                        width: 74,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(image!),
                              fit: BoxFit.cover
                              // fit: BoxFit.cover
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        title!,
                        style: GoogleFonts.inter(
                          color: Color(0xFF666666),
                            fontWeight: FontWeight.w400,
                            fontSize: 12
                        ),
                      ),
                          
                        ],
                      );
                    
  }
}