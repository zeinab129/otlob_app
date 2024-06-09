import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryItem extends StatelessWidget {
  Data? subCatModel;

  SubCategoryItem({super.key, required this.subCatModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const HomeEvent.changeNavBar(4));
              },
              child: Container(
                  width: 70.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: CachedNetworkImage(
                    imageUrl: subCatModel?.image ?? "",
                    fit: BoxFit.fill,
                    placeholder: (context, url) => Center(
                        child: SizedBox(
                            width: 70.0.w,
                            height: 70.0.h,
                            child: CircularProgressIndicator(
                              strokeWidth: 4.r,
                            ))),
                    errorWidget: (context, url, error) => state.categoriesModel
                                    ?.data?[state.catListIndex].image ==
                                null ||
                            state.categoriesModel?.data?[state.catListIndex]
                                    .image ==
                                ""
                        ? const Center(
                            child: Icon(Icons.image_not_supported_rounded))
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(state.categoriesModel
                                    ?.data?[state.catListIndex].image ??
                                "", fit: BoxFit.fill,),
                          ),
                  )),
            ),
            Text(
              subCatModel?.name ?? "",
              style: Styles.searchBarTexStyle.copyWith(fontSize: 12.sp),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        );
      },
    );
  }
}
