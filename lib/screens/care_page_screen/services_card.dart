import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? discountedPrice;
  final String? orginalprice;
  final String? discount;

  const ServicesCard({super.key, required this.image, required this.title, required this.discountedPrice, required this.orginalprice, required this.discount,});

  @override
  Widget build(BuildContext context) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 90,
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
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            discountedPrice!,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            orginalprice!,
                            style: TextStyle(
                                color: Color(0xFF888888),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            discount!,
                            style: TextStyle(
                                color: Color(0XFF584CF4),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      )
                    ],
                  );
  }
}