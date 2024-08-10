import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:flutter_application_1/core/styles.dart';
import 'package:flutter_application_1/core/widgets/custom_button.dart';
import 'package:flutter_application_1/features/home/data/models/item_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_item_image.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/item_actions.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/item_rating.dart';
import 'package:go_router/go_router.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .17,
            ),
            child: CustomItemImage(
              image: itemModel.image,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            itemModel.name,
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 25,
          ),
          ItemAction(
            price: itemModel.price,
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text('description : ' , style: Styles.textStyle30,),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(itemModel.description,style: Styles.textStyle20,),
            ],
          ),
          CustomButton(
            backgroundColor: Colors.blue,
            textColor: Colors.black,
            text: 'edit',
            function: () {
              GoRouter.of(context)
                  .push(AppRouter.kUpdateView, extra: itemModel);
            },
          )
        ],
      ),
    );
  }
}
