import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimedisplayItemWidget extends StatelessWidget {
  const TimedisplayItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Text(
            "9.00",
            style: theme.textTheme.titleSmall,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "AM",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
