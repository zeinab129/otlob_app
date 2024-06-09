import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/cat_list_item.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/sub_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTab extends StatefulWidget {

  CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  late int index;

  @override
  void initState() {
    setState(() {
      index = 0;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.getCategoriesStatus == RequestStatus.success) {
          BlocProvider.of<HomeBloc>(context).add(HomeEvent.getSubCategories(
              state.categoriesModel?.data?[state.catListIndex].id ?? ""));
        }
        if (state.getSubCategoriesStatus == RequestStatus.success) {
          index = state.catListIndex;
          setState(() {});
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            children: [
              Container(
                width: 137.w,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    border: Border(
                        left:
                            BorderSide(width: 1.w, color: AppColors.blueColor),
                        top: BorderSide(width: 1.w, color: AppColors.blueColor),
                        bottom:
                            BorderSide(width: 1.w, color: AppColors.blueColor)),
                    color: AppColors.lightBlueColor),
                child: state.categoriesModel != null
                    ? ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                print(state.categoriesModel?.data?[index].id);
                                BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.getSubCategories(state
                                        .categoriesModel!.data![index].id!));
                                BlocProvider.of<HomeBloc>(context)
                                    .add(HomeEvent.changeCatListIndex(index));
                              },
                              child: CatListItem(
                                  catModel: state.categoriesModel?.data?[index],
                                  catIndex: index));
                        },
                        itemCount: state.categoriesModel?.data?.length,
                      )
                    : const Center(child: CircularProgressIndicator()),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 16.w, right: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(state.categoriesModel?.data?[state.catListIndex]
                                .name ??
                            ""),
                        SizedBox(
                          height: 16.h,
                        ),
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                                width: double.infinity,
                                height: 120.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.greyColor),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: state.categoriesModel
                                            ?.data?[state.catListIndex].image ??
                                        "",
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) => Center(
                                        child: SizedBox(
                                            width: 32.0.w,
                                            height: 32.0.h,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 4.r,
                                            ))),
                                    errorWidget: (context, url, error) =>
                                        const Center(
                                            child: Icon(Icons
                                                .image_not_supported_rounded)),
                                  ),
                                )),
                            Container(
                              padding: EdgeInsets.all(16.0.w.h),
                              width: double.infinity,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  color: AppColors.greyColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 110.w,
                                    child: Text(
                                      state
                                              .categoriesModel
                                              ?.data?[state.catListIndex]
                                              .name ??
                                          "",
                                      style: Styles.searchBarTexStyle.copyWith(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  SizedBox(
                                    width: 97.w,
                                    height: 30.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.w, vertical: 6.h),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: AppColors.blueColor,
                                      ),
                                      child: Text("Shop Now",
                                          style: Styles.sliderTitleStyle
                                              .copyWith(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 12.sp)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        state.catListIndex == index
                            ? Expanded(
                                child: state.subCategoriesModel != null
                                    ? state.subCategoriesModel!.data!.isNotEmpty
                                        ? GridView.builder(
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing: 20.h,
                                                    crossAxisSpacing: 12.w,
                                                    mainAxisExtent: 100.h),
                                            itemBuilder: (context, index) {
                                              return SubCategoryItem(
                                                  subCatModel: state
                                                      .subCategoriesModel
                                                      ?.data?[index]);
                                            },
                                            itemCount: state.subCategoriesModel
                                                ?.data?.length,
                                          )
                                        : Center(
                                            child: Text(
                                            "No subCategories found!",
                                            style: Styles.searchBarTexStyle,
                                          ))
                                    : const Center(
                                        child: CircularProgressIndicator()),
                              )
                            : const Center(child: CircularProgressIndicator()),
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
