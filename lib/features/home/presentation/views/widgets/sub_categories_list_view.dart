import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_categories_list_view_item.dart';

class SubCategoriesListView extends StatelessWidget {
  const SubCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: kPagePadding),
      child: SizedBox(
        height: 78.sp,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: const SubCategoriesListViewItem(
              image:
                  "https://s3-alpha-sig.figma.com/img/24b0/9622/76e50c480329714a01704f0b21e03eac?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sMA6l3hO7~-F1HzdtvbnTdHP5qsQn7wLndwMeLr6tcfDxoJR56P-cMYasdTJHGqd4mBYom5fJ8ZA~zM~Gp1e~NwF8LdiD24KpBKft-shvd26lmFOmlvWFmdJs3vASeE8tNwN9-TzxM-pj7S-wo6H1V26PYD4uZknXWO0qv4E0lz4W1wVhQfliguLVgvKtHgWtHDShkyRh56C0nfSgcCcrgDpWW4GxjZPD1cwOy0VAT95M1Mk2ZNgDClFh62sdqgVptsm3UdBdOcHozTz-sR430yQGYSgZpsseu89toyZ0JxDEygR80oU8RNdNClR~ng6j2dZ4bBNaH9sjYHmq3AY1A__",
              text: 'ساعات',
            ),
          ),
        ),
      ),
    );
  }
}
