import 'package:ecommerce_app/config.dart';
import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/api/stripe_payment/payment_manager.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/cart_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.getCart()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.removeProductFromCartStatus == RequestStatus.success) {
            BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getCart());
            const snackBar = SnackBar(
              content: Text('Product removed successfully!'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.removeProductFromCartStatus == RequestStatus.failure) {
            const snackBar = SnackBar(
              content: Text('Failed To Remove product!'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            print(state.removeProductFromWishListFailure?.message);
          }
          if (state.clearCartStatus == RequestStatus.success) {
            BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getCart());
            const snackBar = SnackBar(
              content: Text('Done!'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            PaymentManager.isSuccess = false;
            Navigator.pushReplacementNamed(context, AppRoutesName.home);
            setState(() {});
          }
          if (state.clearCartStatus == RequestStatus.failure) {
            var snackBar = SnackBar(
              content: Text(state.clearCartFailure?.message ?? ""),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Cart",
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
                        onPressed: null,
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
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Column(
                children: [
                  Expanded(
                    child: state.getCartStatus == RequestStatus.loading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : state.cartProductsModel?.numOfCartItems == 0 ||
                                state.cartProductsModel == null
                            ? Center(
                                child: Text(
                                  "No Products added!",
                                  style: Styles.searchBarTexStyle,
                                ),
                              )
                            : ListView.builder(
                                itemBuilder: (context, index) {
                                  return CartProductItem(
                                    cartItemData: state.cartProductsModel?.data
                                        ?.products?[index],
                                  );
                                },
                                itemCount: state
                                    .cartProductsModel?.data?.products?.length,
                              ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: state.cartProductsModel?.numOfCartItems == 0 ||
                            state.cartProductsModel == null
                        ?null : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total price",
                                    style: Styles.authTextStyle.copyWith(
                                        color: AppColors.blueFontColor
                                            .withOpacity(0.6)),
                                  ),
                                  Text(
                                    "EGP ${state.cartProductsModel?.data?.totalCartPrice.toString() ?? ""}",
                                    style: Styles.authTextStyle.copyWith(
                                        color: AppColors.blueFontColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 48.h,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    bool payed =
                                        await PaymentManager.makePayment(
                                            state.cartProductsModel?.data
                                                    ?.totalCartPrice ??
                                                20,
                                            "EGP",
                                            context);
                                    if (payed) {
                                      BlocProvider.of<HomeBloc>(context)
                                          .add(const HomeEvent.clearCart());
                                    } else {}
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.blueColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12.h, horizontal: 32.w)),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Check Out",
                                        style: Styles.appBarTitleStyle.copyWith(
                                            color: AppColors.whiteColor),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.whiteColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
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
      ),
    );
  }
}
