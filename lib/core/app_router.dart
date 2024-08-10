import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/models/category_model.dart';
import 'package:flutter_application_1/features/home/data/models/item_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/category_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/item_details_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/update_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kCategoryView = '/categoryView';
  static const kItemDetailsView = '/itemDetailsView';
static const kUpdateView = '/updateView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kCategoryView,
        builder: (BuildContext context, GoRouterState state) {
          final CategoryModel category = state.extra as CategoryModel;
          return CategoryView(
            categoryModel: category,
          );
        },
      ),
      GoRoute(
        path: kItemDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          final ItemModel item = state.extra as ItemModel;
          return ItemDetailsView(
            itemModel: item,
          );
        },
      ),
      GoRoute(
        path: kUpdateView,
        builder: (BuildContext context, GoRouterState state) {
          final ItemModel item = state.extra as ItemModel;
          return UpdatePage(
            itemModel: item,
          );
        },
      ),
      
    ],
  );
}
