import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/category_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CategoryViewBody(categoryModel: categoryModel),
    );
  }
}