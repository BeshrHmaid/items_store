import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custom_button.dart';

class ItemAction extends StatelessWidget {
  const ItemAction({super.key, this.price});
  final String? price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: '$price €',
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
           Expanded(
            child: CustomButton(
              backgroundColor: Color.fromARGB(255, 255, 68, 68),
              textColor: Colors.white,
              text: 'Free Preview',
              fontSize: 16,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
