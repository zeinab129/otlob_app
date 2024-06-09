import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

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

        if (state.addProductToWishListStatus == RequestStatus.success) {
          BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getWishList());
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
          BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getWishList());
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
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 192 / 250,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.w,
              mainAxisExtent: 275.h),
          itemBuilder: (context, index) {
            return ProductItem(
              productData: state.productsModel?.data?[index],
              productsList: state.wishlistProductsModel!.data!,
            );
          },
          itemCount: state.productsModel?.data?.length,
        );
      },
    );
  }
}
