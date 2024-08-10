import 'package:flutter/material.dart';

class CustomItemImage extends StatelessWidget {
  const CustomItemImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1/ 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
