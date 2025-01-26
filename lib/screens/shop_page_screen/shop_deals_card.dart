import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopDealsCard extends StatelessWidget {
  final String? image;
  final String? title;

  const ShopDealsCard({super.key, required this.image, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: (MediaQuery.of(context).size.width / 2) - 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(image!),
                              fit: BoxFit.cover
                              // fit: BoxFit.cover
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        title!,
                        style: GoogleFonts.inter(
                          color: Color(0xFF666666),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                        ),
                      ),
                    ],
                  );
  }
}