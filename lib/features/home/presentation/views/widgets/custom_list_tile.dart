import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  CustomListTile({super.key, required this.icon, required this.text});
  String? text;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      title: Row(
        children: [
          Padding(padding: const EdgeInsets.only(right: 10), child: icon),
          Text(
            text!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
      onTap: () {
        // Add your navigation logic here
      },
    );
  }
}
