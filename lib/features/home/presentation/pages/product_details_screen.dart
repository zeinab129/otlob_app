import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/config.dart';
import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductData productData;

  ProductDetailsScreen({super.key, required this.productData});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int currentIndex = 0;
  bool isFav = false;
  List<int> sizes = [38, 39, 40, 41, 42];
  List<Color> colors = [
    const Color(0XFF2F2929),
    const Color(0XFFBC3018),
    const Color(0XFF0973DD),
    const Color(0XFF02B935),
    const Color(0XFFFF645A)
  ];
  int selectedSizeIndex = 0;
  int selectedColorIndex = 0;
  int prodCount = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(const HomeEvent.getCart())
        ..add(const HomeEvent.getWishList()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.getWishListStatus == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: CircularProgressIndicator()),
              ),
            );
          }
          if (state.addProductToCartStatus == RequestStatus.success) {
            BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getCart());
            const snackBar = SnackBar(
              content: Text('Product added successfully!'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Navigator.pushReplacementNamed(context, AppRoutesName.home);
          }
          if (state.addProductToCartStatus == RequestStatus.failure) {
            const snackBar = SnackBar(
                content: Text('Failed to add the product!'),
                backgroundColor: (Colors.black87));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.addProductToWishListStatus == RequestStatus.success) {
            BlocProvider.of<HomeBloc>(context)
                .add(const HomeEvent.getWishList());
            const snackBar = SnackBar(
              content: Text('Product added successfully!'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.addProductToWishListStatus == RequestStatus.failure) {
            const snackBar = SnackBar(
                content: Text('Failed to add the product!'),
                backgroundColor: (Colors.black87));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.removeProductFromWishListStatus == RequestStatus.success) {
            BlocProvider.of<HomeBloc>(context)
                .add(const HomeEvent.getWishList());
            isFav = false;
            setState(() {});
            const snackBar = SnackBar(
              content: Text('Product removed successfully!'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.removeProductFromWishListStatus == RequestStatus.failure) {
            const snackBar = SnackBar(
                content: Text('Failed to remove the product!'),
                backgroundColor: (Colors.black87));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Product Details",
                style: Styles.appBarTitleStyle,
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutesName.home);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.blueColor,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: AppColors.blueColor,
                      size: 32.r,
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Badge(
                    alignment: Alignment.topCenter,
                    label: Text(state.cartListLength! <= 9
                        ? state.cartListLength.toString()
                        : "+9"),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutesName.cart);
                        },
                        icon: Image.asset(
                          AppImages.ic_cart,
                          width: 35.w,
                          height: 35.h,
                        )),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.only(
                  top: 8.0.h, bottom: 4.h, left: 16.w, right: 12.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CarouselSlider(
                            items: widget.productData.images?.map((path) {
                              return Container(
                                margin:
                                    EdgeInsets.only(bottom: 4.h, right: 4.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(2.0, 2.0),
                                      // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: CachedNetworkImage(
                                      width: double.infinity,
                                      height: 300.h,
                                      imageUrl: path,
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) {
                                        return Container(
                                          color: AppColors.greyColor,
                                          child: const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      },
                                      errorWidget: (context, url, error) {
                                        return Container(
                                          color: AppColors.greyColor,
                                          child: const Center(
                                            child: Icon(
                                              Icons.image_not_supported_rounded,
                                            ),
                                          ),
                                        );
                                      },
                                    )),
                              );
                            }).toList(),
                            options: CarouselOptions(
                              height: 300.h,
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
                          bottom: 24.h,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: widget.productData.images!
                                .asMap()
                                .entries
                                .map((e) {
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
                        ),
                        Positioned(
                          right: 24.w,
                          top: 8.h,
                          child: InkWell(
                            onTap: () {
                              isFavItem(state)
                                  ? BlocProvider.of<HomeBloc>(context).add(
                                      HomeEvent.removeProductFromWishList(
                                          widget.productData?.id ?? ""))
                                  : BlocProvider.of<HomeBloc>(context).add(
                                      HomeEvent.addProductToWishList(
                                          widget.productData?.id ?? ""));
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
                                  isFavItem(state)
                                      ? AppImages.ic_fav_added
                                      : AppImages.ic_fav,
                                  width: 14.w,
                                  height: 14.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 160.w,
                            child: Text(
                              widget.productData.title ?? "",
                              style: Styles.authTextStyle
                                  .copyWith(color: AppColors.blueFontColor),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                        Text(
                          "EGP ${widget.productData.price ?? ""}",
                          style: Styles.authTextStyle
                              .copyWith(color: AppColors.blueFontColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        AppColors.blueColor.withOpacity(0.3))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 16.w),
                              child: Text(
                                "${widget.productData.sold ?? ""} Sold",
                                style: Styles.sliderTitleStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blueFontColor),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Icon(
                          Icons.star,
                          color: AppColors.yellowColor,
                        ),
                        Text(
                          "${widget.productData.ratingsAverage.toString() ?? ""} (${widget.productData.quantity.toString() ?? ""})",
                          style: Styles.sliderTitleStyle
                              .copyWith(color: AppColors.blueFontColor),
                        ),
                        const Spacer(),
                        Container(
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
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Description",
                      style: Styles.authLabelStyle
                          .copyWith(color: AppColors.blueFontColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      widget.productData.description ?? "",
                      style: Styles.sliderTitleStyle.copyWith(
                          color: AppColors.blueFontColor.withOpacity(0.5)),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Size",
                      style: Styles.authLabelStyle
                          .copyWith(color: AppColors.blueFontColor),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 35.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedSizeIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 8.w),
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == selectedSizeIndex
                                      ? AppColors.blueColor
                                      : AppColors.whiteColor),
                              child: Text(
                                sizes[index].toString(),
                                style: Styles.sliderTitleStyle.copyWith(
                                    color: index == selectedSizeIndex
                                        ? AppColors.whiteColor
                                        : AppColors.blueFontColor),
                              ),
                            ),
                          );
                        },
                        itemCount: sizes.length,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Color",
                      style: Styles.authLabelStyle
                          .copyWith(color: AppColors.blueFontColor),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 35.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedColorIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 8.w),
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: colors[index]),
                              child: selectedColorIndex == index
                                  ? const Icon(
                                      Icons.done,
                                      color: AppColors.whiteColor,
                                      size: 18,
                                    )
                                  : null,
                            ),
                          );
                        },
                        itemCount: sizes.length,
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total price",
                              style: Styles.authLabelStyle.copyWith(
                                  color:
                                      AppColors.blueFontColor.withOpacity(0.5)),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "EGP ${widget.productData.price ?? ""}",
                              style: Styles.authTextStyle
                                  .copyWith(color: AppColors.blueFontColor),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeEvent.addProductToCart(
                                    widget.productData?.id ?? ""));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.blueColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.h, horizontal: 32.w)),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add_shopping_cart,
                                color: AppColors.whiteColor,
                                size: 24,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Add to cart",
                                style: Styles.appBarTitleStyle
                                    .copyWith(color: AppColors.whiteColor),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool isFavItem(HomeState state) {
    for (int i = 0; i < (state.wishlistProductsModel?.data?.length ?? 0); i++) {
      if (state.wishlistProductsModel!.data![i].id == widget.productData?.id) {
        return true;
      }
    }
    return false;
  }
}
