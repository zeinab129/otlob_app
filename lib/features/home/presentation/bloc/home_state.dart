part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {@Default(RequestStatus.init) RequestStatus getBrandsStatus,
      @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
      @Default(RequestStatus.init) RequestStatus getSubCategoriesStatus,
      @Default(RequestStatus.init) RequestStatus getProductsStatus,
      @Default(RequestStatus.init) RequestStatus addProductToCartStatus,
      @Default(RequestStatus.init) RequestStatus removeProductFromCartStatus,
      @Default(RequestStatus.init) RequestStatus addProductToWishListStatus,
      @Default(RequestStatus.init)
      RequestStatus removeProductFromWishListStatus,
      @Default(RequestStatus.init) RequestStatus getCartStatus,
      @Default(RequestStatus.init) RequestStatus clearCartStatus,
      @Default(RequestStatus.init) RequestStatus getWishListStatus,
      @Default(0) int currentIndex,
      @Default(0) int catListIndex,
      @Default(0) int? cartListLength,
      BrandsModel? brandsModel,
      CategoriesModel? categoriesModel,
      CategoriesModel? subCategoriesModel,
      ProductsModel? productsModel,
      AddCartProductModel? addProductToCartModel,
      RemoveFromCartModel? removeFromCartModel,
      AddRemoveWishlistProductModel? addProductToWishListModel,
      AddRemoveWishlistProductModel? removeProductFromWishListModel,
      CartProductsModel? cartProductsModel,
      ClearCartModel? clearCartModel,
      WishlistProductsModel? wishlistProductsModel,
      Failures? brandsFailure,
      Failures? categoriesFailure,
      Failures? subCategoriesFailure,
      Failures? productsFailure,
      Failures? getCartFailure,
      Failures? clearCartFailure,
      Failures? getWishListFailure,
      Failures? addProductToWishListFailure,
      Failures? removeProductFromWishListFailure,
      Failures? addProductToCartFailure,
      Failures? removeProductFromCartFailure}) = _HomeState;
}
