import 'package:flutter/material.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filtering_view_body.dart';

class FilteringView extends StatelessWidget {
  final Category? selectedCategory;
  final SubCategory? selectedSubCategory;
  const FilteringView({
    super.key,
    required this.selectedCategory,
    required this.selectedSubCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FilteringViewBody(
        selectedCategory: selectedCategory,
        selectedSubCategory: selectedSubCategory,
      ),
    );
  }
}
