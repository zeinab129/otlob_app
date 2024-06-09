import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/cart_products_model.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/data/models/wishlist_products_model.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:injectable/injectable.dart';

class WishListProductItem extends StatefulWidget {
  ProductData? wishListData;

  WishListProductItem({super.key, required this.wishListData});

  @override
  State<WishListProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<WishListProductItem> {
  int prodCount = 1;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.addProductToCartStatus == RequestStatus.success) {
          BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getCart());
          const snackBar = SnackBar(
            content: Text('Product added successfully!'),
            backgroundColor: (Colors.black87),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state.addProductToCartStatus == RequestStatus.failure) {
          const snackBar = SnackBar(
              content: Text('Failed to add the product!'),
              backgroundColor: (Colors.black87));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return Slidable(
          startActionPane: ActionPane(
              motion: const ScrollMotion(),
              extentRatio: 0.20,
              children: [
                Builder(
                  builder: (context) {
                    return ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.removeProductFromWishList(
                                  widget.wishListData?.id ?? ""));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.all(10),
                        ),
                        child: const Icon(
                          Icons.delete,
                          color: AppColors.whiteColor,
                        ));
                  },
                )
              ]),
          child: Container(
            height: 145.h,
            margin: EdgeInsets.only(bottom: 24.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 1, color: AppColors.blueColor.withOpacity(0.3))),
            child: Row(
              children: [
                Container(
                  width: 132.w,
                  height: 145.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: AppColors.blueColor.withOpacity(0.3))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: widget.wishListData?.imageCover ?? "",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 140.w,
                              child: Text(
                                widget.wishListData?.title ?? "",
                                style: Styles.authTextStyle
                                    .copyWith(color: AppColors.blueFontColor),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Container(
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
                                    AppImages.ic_fav_added,
                                    width: 14.w,
                                    height: 14.h,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFF2F2929)),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Orange",
                            style: Styles.sliderTitleStyle.copyWith(
                                color:
                                    AppColors.blueFontColor.withOpacity(0.6)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("EGP ${widget.wishListData?.price}",
                                    style: Styles.authTextStyle.copyWith(
                                      color: AppColors.blueFontColor,
                                    )),
                                Text("EGP ${widget.wishListData!.price! + 200}",
                                    style: Styles.sliderTitleStyle.copyWith(
                                        color: AppColors.blueColor
                                            .withOpacity(0.6),
                                        fontSize: 11.sp,
                                        decoration: TextDecoration.lineThrough))
                              ],
                            ),
                            SizedBox(
                              height: 36.h,
                              child: ElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<HomeBloc>(context).add(
                                        HomeEvent.addProductToCart(
                                            widget.wishListData?.id ?? ""));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.blueColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8.h, horizontal: 10.w)),
                                  child: Text(
                                    "Add to Cart",
                                    style: Styles.sliderTitleStyle.copyWith(
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w500),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
