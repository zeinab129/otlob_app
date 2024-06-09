import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/add_remove_wishlist_product_model.dart';
import 'package:ecommerce_app/features/home/data/models/brands_model.dart';
import 'package:ecommerce_app/features/home/data/models/cart_products_model.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:ecommerce_app/features/home/data/models/add_cart_product_model.dart';
import 'package:ecommerce_app/features/home/data/models/clear_cart_model.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/data/models/remove_from_cart_model.dart';
import 'package:ecommerce_app/features/home/data/models/wishlist_products_model.dart';

abstract class HomeRepo{

  Future<Either<Failures, BrandsModel>> getBrands();
  Future<Either<Failures, CategoriesModel>> getCategories();
  Future<Either<Failures, CategoriesModel>> getSubCategories(String catId);
  Future<Either<Failures, ProductsModel>> getProducts();
  Future<Either<Failures, AddCartProductModel>> addProductTCart(String prodId);
  Future<Either<Failures, RemoveFromCartModel>> removeFromCart(String prodId);
  Future<Either<Failures, CartProductsModel>> getCart();
  Future<Either<Failures, ClearCartModel>> clearCart();
  Future<Either<Failures, WishlistProductsModel>> getWishList();
  Future<Either<Failures, AddRemoveWishlistProductModel>> addProductToWishList(String prodId);
  Future<Either<Failures, AddRemoveWishlistProductModel>> removeProductFromWishList(String prodId);

}