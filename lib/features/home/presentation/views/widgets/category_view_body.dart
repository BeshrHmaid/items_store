import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles.dart';
import 'package:flutter_application_1/features/home/data/models/category_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/list_view_item.dart';
class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
      
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Items in ${categoryModel.name}',style: Styles.textStyle20,),
              ),
            ],
          ),
          Expanded(
            child: categoryModel.items!.isEmpty
                ? const Center(
                    child: Text(
                      'No Data',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: categoryModel.items!.length,
                    itemBuilder: (context, index) {
                      final item = categoryModel.items![index];
                      return ListViewItem(
                        item: item,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
