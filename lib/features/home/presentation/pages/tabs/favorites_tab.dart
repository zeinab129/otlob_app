import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/wish_list_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesTab extends StatefulWidget {
  const FavoritesTab({super.key});

  @override
  State<FavoritesTab> createState() => _FavoritesTabState();
}

class _FavoritesTabState extends State<FavoritesTab> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.removeProductFromWishListStatus == RequestStatus.success) {
          BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getWishList());
          const snackBar = SnackBar(
            content: Text('Product removed successfully!'),
            backgroundColor: (Colors.black87),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state.removeProductFromWishListStatus == RequestStatus.failure) {
          const snackBar = SnackBar(
            content: Text('Failed To Remove product!'),
            backgroundColor: (Colors.black87),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print(state.removeProductFromWishListFailure?.message);
        }
      },
      builder: (context, state) {
        return state.wishlistProductsModel != null? Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          width: double.infinity,
          height: double.infinity,
          child: state.getWishListStatus == RequestStatus.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.getWishListStatus == RequestStatus.failure
                  ? Center(
                      child: Text(
                        "Something went wrong!",
                        style: Styles.searchBarTexStyle,
                      ),
                    )
                  : state.wishlistProductsModel?.data?.length == 0
                      ? Center(
                          child: Text(
                            "No Products added!",
                            style: Styles.searchBarTexStyle,
                          ),
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            return WishListProductItem(
                                wishListData:
                                    state.wishlistProductsModel?.data?[index]);
                          },
                          itemCount: state.wishlistProductsModel?.data?.length,
                        ),
        )
            : const Center(child: CircularProgressIndicator(),);
      },
    );
  }
}
