import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/cart_products_model.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

class CartProductItem extends StatefulWidget {
  Products? cartItemData;

  CartProductItem({super.key, required this.cartItemData});

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  int prodCount = 1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          height: 144.h,
          margin: EdgeInsets.only(bottom: 24.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  width: 1, color: AppColors.blueColor.withOpacity(0.3))),
          child: Row(
            children: [
              Container(
                width: 132.w,
                height: 144.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 1, color: AppColors.blueColor.withOpacity(0.3))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    height: double.infinity,
                    width: 120.w,
                    imageUrl: widget.cartItemData?.product?.imageCover ?? "",
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
                              widget.cartItemData?.product?.title ?? "",
                              style: Styles.authTextStyle
                                  .copyWith(color: AppColors.blueFontColor),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                        IconButton(
                            onPressed: () {
                              BlocProvider.of<HomeBloc>(context).add(
                                  HomeEvent.removeProductFromCart(
                                      widget.cartItemData?.product?.id ?? ""));
                            },
                            icon: Image.asset(
                              AppImages.ic_delete,
                              width: 24.w,
                              height: 24.h,
                              color: AppColors.blueFontColor,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 15.w,
                          height: 15.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0XFF2F2929)),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Orange",
                          style: Styles.sliderTitleStyle.copyWith(
                              color: AppColors.blueFontColor.withOpacity(0.6)),
                        ),
                        Container(
                          height: 15.h,
                          width: 2.w,
                          margin: EdgeInsets.symmetric(horizontal: 2.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0XFF6A6695),
                          ),
                        ),
                        Text(
                          "Size: 40",
                          style: Styles.sliderTitleStyle.copyWith(
                              color: AppColors.blueFontColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("EGP ${widget.cartItemData?.price}",
                              style: Styles.authTextStyle.copyWith(
                                color: AppColors.blueFontColor,
                              )),
                          Container(
                              height: 42.h,
                              decoration: BoxDecoration(
                                color: AppColors.blueColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 16.w),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (prodCount > 1) {
                                          prodCount--;
                                        }
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 20.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 2.w,
                                                color: AppColors.whiteColor)),
                                        child: const Icon(
                                          Icons.remove,
                                          color: AppColors.whiteColor,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 22.w,
                                    ),
                                    Text(
                                      prodCount.toString(),
                                      style: Styles.authLabelStyle,
                                    ),
                                    SizedBox(
                                      width: 22.w,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        if (prodCount < 10) {
                                          prodCount++;
                                        }
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 20.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 2.w,
                                                color: AppColors.whiteColor)),
                                        child: const Icon(
                                          Icons.add,
                                          color: AppColors.whiteColor,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
