import 'package:ecommerce_app/features/home/data/models/add_remove_wishlist_product_model.dart';
import 'package:ecommerce_app/features/home/data/models/brands_model.dart';
import 'package:ecommerce_app/features/home/data/models/cart_products_model.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:ecommerce_app/features/home/data/models/add_cart_product_model.dart';
import 'package:ecommerce_app/features/home/data/models/clear_cart_model.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/data/models/remove_from_cart_model.dart';
import 'package:ecommerce_app/features/home/data/models/wishlist_products_model.dart';

abstract class HomeRemoteDS{
  Future<BrandsModel> getBrands();
  Future<CategoriesModel> getCategories();
  Future<CategoriesModel> getSubCategories(String catId);
  Future<ProductsModel> getProducts();
  Future<AddCartProductModel> addProductToCart(String prodId);
  Future<RemoveFromCartModel> removeProductFromCart(String prodId);
  Future<CartProductsModel> getCart();
  Future<ClearCartModel> clearCart();
  Future<WishlistProductsModel> getWishlist();
  Future<AddRemoveWishlistProductModel> addProductToWishList(String prodId);
  Future<AddRemoveWishlistProductModel> removeProductFromWishList(String prodId);
}