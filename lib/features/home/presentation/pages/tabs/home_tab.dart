import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/brand_item.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/category_item.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int currentIndex = 0;

  List<String> imagesPath = [
    "assets/images/slider1.png",
    "assets/images/slider2.png",
    "assets/images/slider3.png",
  ];
  List<String> discount = [
    "25",
    "30",
    "30",
  ];
  List<String> title = [
    "For all Headphones & AirPods",
    "For all Makeup & Skincare",
    "For Laptops & Mobiles",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Stack(
                children: [
                  CarouselSlider(
                      items: imagesPath.map((path) {
                        return SliderItem(
                          path: path,
                          index: imagesPath.indexOf(path),
                          title: title[imagesPath.indexOf(path)],
                          discount: discount[imagesPath.indexOf(path)],
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 200.h,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.2,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      )),
                  Positioned(
                    bottom: 20.h,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesPath.asMap().entries.map((e) {
                        int index = e.key;
                        return Container(
                          width: 10.w,
                          height: 10.h,
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == index
                                  ? AppColors.blueColor
                                  : AppColors.whiteColor),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: Styles.authTextStyle
                          .copyWith(color: AppColors.blueFontColor),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'view all',
                          style: Styles.searchBarTexStyle
                              .copyWith(fontSize: 12.sp),
                        ))
                  ],
                ),
              ),
              (state.categoriesModel != null)
                  ? Container(
                      height: 288.h,
                      margin: EdgeInsets.only(left: 16.w),
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.categoriesModel?.data?.length,
                          itemBuilder: (context, index) {
                            return CategoryItem(
                                catModel:
                                    state.categoriesModel?.data?[index] ?? []);
                          }),
                    )
                  : SizedBox(
                      height: 280.h,
                      child: const Center(child: CircularProgressIndicator())),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'Brands',
                  style: Styles.authTextStyle.copyWith(color: AppColors.blueFontColor),
                ),
              ),
              state.brandsModel != null
                  ? Container(
                      margin: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 16.h),
                      height: 122.h,
                      child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                                width: 16.w,
                              ),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.brandsModel!.data!.length,
                          itemBuilder: (context, index) {
                            return BrandItem(brandModel: state.brandsModel!.data![index]);
                          }),
                    )
                  : const Center(child: CircularProgressIndicator()),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
