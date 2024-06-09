import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatListItem extends StatelessWidget {
  Data? catModel;
  int catIndex;

  CatListItem({super.key, required this.catModel, required this.catIndex});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          height: 82.h,
          width: 137.w,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: catIndex == state.catListIndex
                  ? AppColors.whiteColor
                  : AppColors.lightBlueColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              catModel?.name ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.searchBarHintStyle.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.blueFontColor),
            ),
          ),
        );
      },
    );
  }
}
