import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
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
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRemoteDS)
class HomeRemoteDSImpl implements HomeRemoteDS {
  ApiManager apiManager;

  HomeRemoteDSImpl(this.apiManager);

  @override
  Future<BrandsModel> getBrands() async {
    var response = await apiManager.getData(endPoint: EndPoints.brands);
    BrandsModel brandsModel = BrandsModel.fromJson(response.data);
    return brandsModel;
  }

  @override
  Future<CategoriesModel> getCategories() async {
    var response = await apiManager.getData(endPoint: EndPoints.categories);
    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }

  @override
  Future<ProductsModel> getProducts() async {
    var response = await apiManager.getData(endPoint: EndPoints.products);
    ProductsModel productsModel = ProductsModel.fromJson(response.data);
    return productsModel;
  }

  @override
  Future<CategoriesModel> getSubCategories(String catId) async {
    var response = await apiManager.getData(
        endPoint: "${EndPoints.categories}$catId${EndPoints.subCategories}");
    CategoriesModel subCategoriesModel =
        CategoriesModel.fromJson(response.data);
    return subCategoriesModel;
  }

  @override
  Future<AddCartProductModel> addProductToCart(String prodId) async {
    var response = await apiManager.postData(
        endPoint: EndPoints.addProductToCart,
        body: {"productId": prodId},
        header: {"token": CacheHelper.getToken("token")});
    AddCartProductModel productCartModel =
        AddCartProductModel.fromJson(response.data);
    return productCartModel;
  }

  @override
  Future<CartProductsModel> getCart() async {
    var response = await apiManager.getData(
        endPoint: EndPoints.addProductToCart,
        header: {"token": CacheHelper.getToken("token")});
    CartProductsModel cartProductsModel =
        CartProductsModel.fromJson(response.data);
    return cartProductsModel;
  }

  @override
  Future<AddRemoveWishlistProductModel> addProductToWishList(
      String prodId) async {
    var response = await apiManager.postData(
        endPoint: EndPoints.wishList,
        body: {"productId": prodId},
        header: {"token": CacheHelper.getToken("token")});
    AddRemoveWishlistProductModel addRemoveWishlistProductModel =
        AddRemoveWishlistProductModel.fromJson(response.data);
    return addRemoveWishlistProductModel;
  }

  @override
  Future<WishlistProductsModel> getWishlist() async {
    var response = await apiManager.getData(
        endPoint: EndPoints.wishList,
        header: {"token": CacheHelper.getToken("token")});
    WishlistProductsModel wishlistProductsModel =
        WishlistProductsModel.fromJson(response.data);
    return wishlistProductsModel;
  }

  @override
  Future<AddRemoveWishlistProductModel> removeProductFromWishList(
      String prodId) async {
    var response = await apiManager.deleteData(
        endPoint: "${EndPoints.wishList}/$prodId",
        header: {"token": CacheHelper.getToken("token")});
    AddRemoveWishlistProductModel addRemoveWishlistProductModel =
        AddRemoveWishlistProductModel.fromJson(response.data);
    return addRemoveWishlistProductModel;
  }

  @override
  Future<RemoveFromCartModel> removeProductFromCart(String prodId) async {
    var response = await apiManager.deleteData(
        endPoint: "${EndPoints.addProductToCart}/$prodId",
        header: {"token": CacheHelper.getToken("token")});
    RemoveFromCartModel removeFromCartModel =
        RemoveFromCartModel.fromJson(response.data);
    return removeFromCartModel;
  }

  @override
  Future<ClearCartModel> clearCart() async {
    var response = await apiManager.deleteData(
        endPoint: "${EndPoints.clearCart}",
        header: {"token": CacheHelper.getToken("token")});
    ClearCartModel clearCartModel = ClearCartModel.fromJson(response.data);
    return clearCartModel;
  }
}
