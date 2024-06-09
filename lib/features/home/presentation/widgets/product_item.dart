import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/pages/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final ProductData? productData;
  List<ProductData> productsList;

  ProductItem(
      {required this.productData, required this.productsList, super.key});

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(width: 2.w, color: Colors.blueGrey),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                        productData: productData!,
                      )));
            },
            child: Stack(
              // alignment: Alignment.centerRight,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: CachedNetworkImage(
                      imageUrl: productData?.imageCover ?? "",
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 128.h,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error_outline, size: 40)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 7.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        isFavItem()
                            ? BlocProvider.of<HomeBloc>(context).add(
                                HomeEvent.removeProductFromWishList(
                                    productData?.id ?? ""))
                            : BlocProvider.of<HomeBloc>(context).add(
                                HomeEvent.addProductToWishList(
                                    productData?.id ?? ""));
                      },
                      child: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                                offset: Offset(2.0, 2.0),
                                // shadow direction: bottom right
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Image.asset(
                            isFavItem()
                                ? AppImages.ic_fav_added
                                : AppImages.ic_fav,
                            width: 14.w,
                            height: 14.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Text(
                  productData?.brand?.name ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.sliderTitleStyle
                      .copyWith(color: AppColors.blueFontColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Text(
                  productData?.description ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SizedBox(width: 8.w),
                  Text(
                    "Egp ${productData?.price.toString() ?? ""}",
                    style: Styles.sliderTitleStyle
                        .copyWith(color: AppColors.blueFontColor),
                  ),
                  SizedBox(width: 16.w),
                  Text("EGP ${(productData!.price! + 300).toString() ?? ""}",
                      style: Styles.sliderTitleStyle.copyWith(
                          color: AppColors.blueColor.withOpacity(0.6),
                          fontSize: 11.sp,
                          decoration: TextDecoration.lineThrough)),
                ],
              ),
              SizedBox(height: 5.h),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 8.w, bottom: 13.h, right: 8.w),
                child: Row(
                  children: [
                    Text(
                      "Review",
                      style: Styles.searchBarTexStyle.copyWith(fontSize: 12.sp),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "(${productData?.ratingsAverage.toString() ?? ""})",
                      style: Styles.searchBarTexStyle.copyWith(fontSize: 12.sp),
                    ),
                    SizedBox(width: 4.w),
                    const Icon(
                      Icons.star,
                      color: AppColors.yellowColor,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<HomeBloc>(context).add(
                            HomeEvent.addProductToCart(productData?.id ?? ""));
                      },
                      child: Container(
                          padding: EdgeInsets.all(4.w.h),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.blueColor,
                          ),
                          child: const Icon(Icons.add, color: Colors.white)),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }

  bool isFavItem() {
    for (int i = 0; i < productsList.length; i++) {
      if (productsList[i].id == productData?.id) {
        isFav = true;
      }
    }
    return isFav;
  }
}
