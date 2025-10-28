import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/core/widgets/custom_button.dart';
import 'package:otex_app/features/home/presentation/manager/filtering_cubit/filtering_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filtering_view_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/monthly_installments_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/payment_methods_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/price_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/property_status_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/property_rooms_count_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/property_type_section.dart';

class FilteringViewBody extends StatefulWidget {
  final Category? selectedCategory;
  final SubCategory? selectedSubCategory;
  const FilteringViewBody({
    super.key,
    required this.selectedCategory,
    required this.selectedSubCategory,
  });

  @override
  State<FilteringViewBody> createState() => _FilteringViewBodyState();
}

class _FilteringViewBodyState extends State<FilteringViewBody> {
  TextEditingController minInstallmentController = TextEditingController();
  TextEditingController maxInstallmentController = TextEditingController();
  TextEditingController minProductPriceController = TextEditingController();
  TextEditingController maxProductPriceController = TextEditingController();

  @override
  void dispose() {
    minInstallmentController.dispose();
    maxInstallmentController.dispose();
    minProductPriceController.dispose();
    maxProductPriceController.dispose();
    super.dispose();
  }

  String? minInstallmentValue,
      minProductPrice,
      maxInstallmentValue,
      maxProductPrice,
      propertyType,
      propertyRoomsCount,
      paymentMethod,
      propertyStatus;

  void updateFilteredCount() async {
    await BlocProvider.of<FilteringCubit>(context).fetchFilteredProductsCount(
      minProductPrice: minProductPrice,
      maxProductPrice: maxProductPrice,
      minInstallmentValue: minInstallmentValue,
      maxInstallmentValue: maxInstallmentValue,
      propertyType: propertyType,
      propertyRoomsCount: propertyRoomsCount,
      paymentMethod: paymentMethod,
      propertyStatus: propertyStatus,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(25.h),
            FilteringViewHeader(
              onResetFilter: () {
                final shouldUpdate =
                    minInstallmentValue != null ||
                    minProductPrice != null ||
                    maxInstallmentValue != null ||
                    maxProductPrice != null ||
                    propertyType != null ||
                    propertyRoomsCount != null ||
                    paymentMethod != null ||
                    propertyStatus != null;
                if (shouldUpdate) {
                  setState(() {
                    minInstallmentValue = null;
                    minProductPrice = null;
                    maxInstallmentValue = null;
                    maxProductPrice = null;
                    propertyType = null;
                    propertyRoomsCount = null;
                    paymentMethod = null;
                    propertyStatus = null;
                    minInstallmentController.clear();
                    maxInstallmentController.clear();
                    minProductPriceController.clear();
                    maxProductPriceController.clear();
                    updateFilteredCount();
                  });
                }
              },
            ),
            Gap(32.h),
            CategorySection(
              selectedCategory: widget.selectedCategory,
              selectedSubCategory: widget.selectedSubCategory,
            ),
            if (widget.selectedCategory?.id == 5)
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: MonthlyInstallmentsSection(
                  minInstallmentController: minInstallmentController,
                  onMinInstallmentChanged: (String? value) {
                    if (minInstallmentValue != value) {
                      minInstallmentValue = value;
                      updateFilteredCount();
                    }
                  },
                  maxInstallmentController: maxInstallmentController,
                  onMaxInstallmentChanged: (String? value) {
                    if (maxInstallmentValue != value) {
                      maxInstallmentValue = value;
                      updateFilteredCount();
                    }
                  },
                ),
              ),
            if (widget.selectedCategory?.id == 5)
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: PropertyTypeSection(
                  selectedType: propertyType,
                  onSelectType: (String? propertySelectedType) {
                    if (propertyType != propertySelectedType) {
                      setState(() => propertyType = propertySelectedType);
                      updateFilteredCount();
                    }
                  },
                ),
              ),
            if (widget.selectedCategory?.id == 5)
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: PropertyRoomsCountSection(
                  selectedCount: propertyRoomsCount,
                  onSelectCount: (String? selectedRoomsCount) {
                    if (propertyRoomsCount != selectedRoomsCount) {
                      setState(() {
                        propertyRoomsCount = selectedRoomsCount;
                      });
                      updateFilteredCount();
                    }
                  },
                ),
              ),
            Gap(20.h),
            PriceSection(
              minProductPriceController: minProductPriceController,
              maxProductPriceController: maxProductPriceController,
              onMinPriceChanged: (String? value) {
                if (minProductPrice != value) {
                  minProductPrice = value;
                  updateFilteredCount();
                }
              },
              onMaxPriceChanged: (String? value) {
                if (maxProductPrice != value) {
                  maxProductPrice = value;
                  updateFilteredCount();
                }
              },
            ),
            Gap(20.h),
            PaymentMethodsSection(
              selectedPaymentMethod: paymentMethod,
              onPaymentMethodSelect: (String? paymentSelectedMethod) {
                if (paymentMethod != paymentSelectedMethod) {
                  setState(() {
                    paymentMethod = paymentSelectedMethod;
                  });
                  updateFilteredCount();
                }
              },
              selectedCategoryId: widget.selectedCategory?.id ?? -1,
            ),
            if (widget.selectedCategory?.id == 5)
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: PropertyStatusSection(
                  selectedPropertyStatus: propertyStatus,
                  onPropertyStatusSelect: (String? propertySelectedStatus) {
                    if (propertyStatus != propertySelectedStatus) {
                      setState(() {
                        propertyStatus = propertySelectedStatus;
                      });
                      updateFilteredCount();
                    }
                  },
                ),
              ),
            Gap(78.h),
            CustomButton(
              onTap: () async {
                await BlocProvider.of<ProductsCubit>(
                  context,
                ).fetchFilteredProducts(
                  selectedCategoryId: widget.selectedCategory?.id,
                  selectedSubCategoryId: widget.selectedSubCategory?.id,
                  minProductPrice: minProductPrice,
                  maxProductPrice: maxProductPrice,
                  minInstallmentValue: minInstallmentValue,
                  maxInstallmentValue: maxInstallmentValue,
                  propertyType: propertyType,
                  propertyRoomsCount: propertyRoomsCount,
                  paymentMethod: paymentMethod,
                  propertyStatus: propertyStatus,
                );
                GoRouter.of(context).pop();
              },
            ),
            Gap(16.h),
          ],
        ),
      ),
    );
  }
}
