import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/data_sources/remote/home_remote_ds.dart';
import 'package:ecommerce_app/features/home/data/models/add_remove_wishlist_product_model.dart';
import 'package:ecommerce_app/features/home/data/models/brands_model.dart';
import 'package:ecommerce_app/features/home/data/models/cart_products_model.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:ecommerce_app/features/home/data/models/add_cart_product_model.dart';
import 'package:ecommerce_app/features/home/data/models/clear_cart_model.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/data/models/remove_from_cart_model.dart';
import 'package:ecommerce_app/features/home/data/models/wishlist_products_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRemoteDS homeRemoteDS;

  HomeRepoImpl(this.homeRemoteDS);

  @override
  Future<Either<Failures, BrandsModel>> getBrands() async {
    try {
      var result = await homeRemoteDS.getBrands();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoriesModel>> getCategories() async {
    try {
      var result = await homeRemoteDS.getCategories();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ProductsModel>> getProducts() async {
    try {
      var result = await homeRemoteDS.getProducts();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoriesModel>> getSubCategories(
      String catId) async {
    try {
      var result = await homeRemoteDS.getSubCategories(catId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, AddCartProductModel>> addProductTCart(
      String prodId) async {
    try {
      var result = await homeRemoteDS.addProductToCart(prodId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CartProductsModel>> getCart() async {
    try {
      var result = await homeRemoteDS.getCart();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, AddRemoveWishlistProductModel>> addProductToWishList(
      String prodId) async {
    try {
      var result = await homeRemoteDS.addProductToWishList(prodId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, WishlistProductsModel>> getWishList() async {
    try {
      var result = await homeRemoteDS.getWishlist();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, AddRemoveWishlistProductModel>>
      removeProductFromWishList(String prodId) async {
    try {
      var result = await homeRemoteDS.removeProductFromWishList(prodId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, RemoveFromCartModel>> removeFromCart(String prodId)async {
    try {
      var result = await homeRemoteDS.removeProductFromCart(prodId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ClearCartModel>> clearCart() async{
    try {
      var result = await homeRemoteDS.clearCart();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
