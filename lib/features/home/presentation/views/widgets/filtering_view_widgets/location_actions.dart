import 'package:flutter/material.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_list_tile.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/change_location_icon_button.dart';

class LocationActions extends StatelessWidget {
  const LocationActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
      child: const Row(
        children: [
          Expanded(
            child: CategoryListTile(
              icon: OtexIcons.location_on,
              title: 'مصر',
              subtitle: "الموقع",
            ),
          ),
          ChangeLoactionIconButton(),
        ],
      ),
    );
  }
}
