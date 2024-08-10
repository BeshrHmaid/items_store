import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/item_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/item_details_view_body.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ItemDetailsViewBody(itemModel: itemModel),
    );
  }
}