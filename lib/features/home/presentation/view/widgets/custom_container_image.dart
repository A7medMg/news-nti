import 'package:flutter/material.dart';

class CustomContainerImage extends StatelessWidget {
  const CustomContainerImage({super.key, required this.image, this.height});
final String ?image;
final double ?height;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: height??200,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image??imageUrl),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(20),
      ),

    );
  }
}
String imageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM-b_N-b66eRoRRDJiVDqLLv6hk8mGx8TrDXz1VVsypA&s=10";