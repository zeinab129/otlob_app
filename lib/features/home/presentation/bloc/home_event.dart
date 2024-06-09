part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {

  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getBrands() = _GetBrandsEvent;
  const factory HomeEvent.getCategories() = _GetCategoriesEvent;
  const factory HomeEvent.getSubCategories(String catId) = _GetSubCategoriesEvent;
  const factory HomeEvent.getProducts() = _GetProductsEvent;
  const factory HomeEvent.changeCatListIndex(int catIndex) = _ChangeCatListIndexEvent;
  const factory HomeEvent.changeNavBar(int index) = _ChangeNavBarEvent;
  const factory HomeEvent.addProductToCart(String prodId) = _AddProductToCartEvent;
  const factory HomeEvent.removeProductFromCart(String prodId) = _RemoveProductFromCartEvent;
  const factory HomeEvent.addProductToWishList(String prodId) = _AddProductToWishListEvent;
  const factory HomeEvent.removeProductFromWishList(String prodId) = _RemoveProductFromWishListEvent;
  const factory HomeEvent.getCart() = _GetCartEvent;
  const factory HomeEvent.clearCart() = _ClearCartEvent;
  const factory HomeEvent.getWishList() = _GetWishListEvent;

}
