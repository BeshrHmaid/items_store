import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  CustomCategoryCard({super.key, required this.imagePath, required this.text});
  String? imagePath;
  String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Image(
                image: AssetImage(imagePath!),
                height: 50,
                width: 60,
              ),
            ),
            Text(
              text!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
