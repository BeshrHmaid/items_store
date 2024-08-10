import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:flutter_application_1/features/home/data/models/item_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/item_rating.dart';
import 'package:go_router/go_router.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kItemDetailsView, extra: item);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: Colors.blue)),
          width: MediaQuery.of(context)
              .size
              .width, // Set the width to the full screen width
          height: 130,
          padding: const EdgeInsets.symmetric(
              horizontal: 16), // Optional: Add padding to the left and right
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2 / 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content vertically
                  children: [
                    Text(
                      item.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:const  TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold), // Optional: Add text style
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${item.price} €',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600]), // Optional: Add text style
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ItemRating(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
