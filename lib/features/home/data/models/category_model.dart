// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter_application_1/features/home/data/models/item_model.dart';

class CategoryModel {
  
  final String name;
  final String image;
  final List<ItemModel>?items;
  CategoryModel({
    required this.name,
    required this.image,
    this.items
  });
}
