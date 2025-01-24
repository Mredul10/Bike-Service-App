import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCard extends StatelessWidget {
  final String? categoriesTitle;
  final String? categoriesImage;
  const CategoriesCard({super.key, this.categoriesTitle, this.categoriesImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 54,
          width: (MediaQuery.of(context).size.width / 4) -24,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoriesImage!),
                fit: BoxFit.cover
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          categoriesTitle!,
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