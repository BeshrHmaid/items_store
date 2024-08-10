import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/core/styles.dart';
import 'package:flutter_application_1/features/home/data/models/category_model.dart';
import 'package:flutter_application_1/features/home/data/models/item_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_category_card.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<CategoryModel> categories = [
    CategoryModel( name: 'super market', image: AppAssets.marketImage,items: [
      ItemModel( name: 'item1', image: AppAssets.v1Image, description: 'description1',price: '1.2'),
      ItemModel( name: 'item2', image: AppAssets.v2Image, description: 'description2',price: '2.2'),
      ItemModel( name: 'item3', image: AppAssets.v3Image, description: 'description3',price: '3.2'),
      
    ]),
    CategoryModel( name: 'makeup', image: AppAssets.makeupImage,items: [
      ItemModel( name: 'item1', image: AppAssets.m1Image, description: 'description1',price: '1.2'),
      ItemModel( name: 'item2', image: AppAssets.m2Image, description: 'description2',price: '2.2'),
      ItemModel( name: 'item3', image: AppAssets.m3Image, description: 'description3',price: '5.2'),
      ItemModel( name: 'item4', image: AppAssets.m4Image, description: 'description4',price: '3.2'),
      
    ]),
    CategoryModel( name: 'clothes', image: AppAssets.clothesImage,items: [
      ItemModel( name: 'item1', image: AppAssets.c1Image, description: 'description1',price: '21.1'),
      ItemModel( name: 'item3', image: AppAssets.c2Image, description: 'description2',price: '11.2'),
      ItemModel( name: 'item2', image: AppAssets.c3Image, description: 'description3',price: '31.2'),
    ]),
    CategoryModel( name: 'library', image: AppAssets.libraryImage,items: []),
    CategoryModel( name: 'medical', image: AppAssets.medImage,items: []),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
              child: Text('Categories',style: Styles.textStyle30,),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio:
                  1.5, 
            ),
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.kCategoryView,
                    extra: categories[index],
                  );
                },
                child: CustomCategoryCard(
                  text: categories[index].name,
                  imagePath: categories[index].image,
                 
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
