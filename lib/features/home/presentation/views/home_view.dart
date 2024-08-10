import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions:const [
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 16,)
        ],
      ),
      body:  HomeViewBody(),
      drawer:const CustomDrawer(),
    );
  }
}
