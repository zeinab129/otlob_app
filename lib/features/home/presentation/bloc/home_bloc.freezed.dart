// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetBrandsEventImplCopyWith<$Res> {
  factory _$$GetBrandsEventImplCopyWith(_$GetBrandsEventImpl value,
          $Res Function(_$GetBrandsEventImpl) then) =
      __$$GetBrandsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBrandsEventImpl>
    implements _$$GetBrandsEventImplCopyWith<$Res> {
  __$$GetBrandsEventImplCopyWithImpl(
      _$GetBrandsEventImpl _value, $Res Function(_$GetBrandsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBrandsEventImpl implements _GetBrandsEvent {
  const _$GetBrandsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return getBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return getBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class _GetBrandsEvent implements HomeEvent {
  const factory _GetBrandsEvent() = _$GetBrandsEventImpl;
}

/// @nodoc
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesEventImpl implements _GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategoriesEvent implements HomeEvent {
  const factory _GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$GetSubCategoriesEventImplCopyWith<$Res> {
  factory _$$GetSubCategoriesEventImplCopyWith(
          _$GetSubCategoriesEventImpl value,
          $Res Function(_$GetSubCategoriesEventImpl) then) =
      __$$GetSubCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String catId});
}

/// @nodoc
class __$$GetSubCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetSubCategoriesEventImpl>
    implements _$$GetSubCategoriesEventImplCopyWith<$Res> {
  __$$GetSubCategoriesEventImplCopyWithImpl(_$GetSubCategoriesEventImpl _value,
      $Res Function(_$GetSubCategoriesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
  }) {
    return _then(_$GetSubCategoriesEventImpl(
      null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesEventImpl implements _GetSubCategoriesEvent {
  const _$GetSubCategoriesEventImpl(this.catId);

  @override
  final String catId;

  @override
  String toString() {
    return 'HomeEvent.getSubCategories(catId: $catId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesEventImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => __$$GetSubCategoriesEventImplCopyWithImpl<
          _$GetSubCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return getSubCategories(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return getSubCategories?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(catId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetSubCategoriesEvent implements HomeEvent {
  const factory _GetSubCategoriesEvent(final String catId) =
      _$GetSubCategoriesEventImpl;

  String get catId;
  @JsonKey(ignore: true)
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsEventImplCopyWith<$Res> {
  factory _$$GetProductsEventImplCopyWith(_$GetProductsEventImpl value,
          $Res Function(_$GetProductsEventImpl) then) =
      __$$GetProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetProductsEventImpl>
    implements _$$GetProductsEventImplCopyWith<$Res> {
  __$$GetProductsEventImplCopyWithImpl(_$GetProductsEventImpl _value,
      $Res Function(_$GetProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsEventImpl implements _GetProductsEvent {
  const _$GetProductsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProductsEvent implements HomeEvent {
  const factory _GetProductsEvent() = _$GetProductsEventImpl;
}

/// @nodoc
abstract class _$$ChangeCatListIndexEventImplCopyWith<$Res> {
  factory _$$ChangeCatListIndexEventImplCopyWith(
          _$ChangeCatListIndexEventImpl value,
          $Res Function(_$ChangeCatListIndexEventImpl) then) =
      __$$ChangeCatListIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int catIndex});
}

/// @nodoc
class __$$ChangeCatListIndexEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeCatListIndexEventImpl>
    implements _$$ChangeCatListIndexEventImplCopyWith<$Res> {
  __$$ChangeCatListIndexEventImplCopyWithImpl(
      _$ChangeCatListIndexEventImpl _value,
      $Res Function(_$ChangeCatListIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catIndex = null,
  }) {
    return _then(_$ChangeCatListIndexEventImpl(
      null == catIndex
          ? _value.catIndex
          : catIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCatListIndexEventImpl implements _ChangeCatListIndexEvent {
  const _$ChangeCatListIndexEventImpl(this.catIndex);

  @override
  final int catIndex;

  @override
  String toString() {
    return 'HomeEvent.changeCatListIndex(catIndex: $catIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCatListIndexEventImpl &&
            (identical(other.catIndex, catIndex) ||
                other.catIndex == catIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCatListIndexEventImplCopyWith<_$ChangeCatListIndexEventImpl>
      get copyWith => __$$ChangeCatListIndexEventImplCopyWithImpl<
          _$ChangeCatListIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return changeCatListIndex(catIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return changeCatListIndex?.call(catIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (changeCatListIndex != null) {
      return changeCatListIndex(catIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return changeCatListIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return changeCatListIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (changeCatListIndex != null) {
      return changeCatListIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeCatListIndexEvent implements HomeEvent {
  const factory _ChangeCatListIndexEvent(final int catIndex) =
      _$ChangeCatListIndexEventImpl;

  int get catIndex;
  @JsonKey(ignore: true)
  _$$ChangeCatListIndexEventImplCopyWith<_$ChangeCatListIndexEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNavBarEventImplCopyWith<$Res> {
  factory _$$ChangeNavBarEventImplCopyWith(_$ChangeNavBarEventImpl value,
          $Res Function(_$ChangeNavBarEventImpl) then) =
      __$$ChangeNavBarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeNavBarEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeNavBarEventImpl>
    implements _$$ChangeNavBarEventImplCopyWith<$Res> {
  __$$ChangeNavBarEventImplCopyWithImpl(_$ChangeNavBarEventImpl _value,
      $Res Function(_$ChangeNavBarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeNavBarEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeNavBarEventImpl implements _ChangeNavBarEvent {
  const _$ChangeNavBarEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeNavBar(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNavBarEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNavBarEventImplCopyWith<_$ChangeNavBarEventImpl> get copyWith =>
      __$$ChangeNavBarEventImplCopyWithImpl<_$ChangeNavBarEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return changeNavBar(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return changeNavBar?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (changeNavBar != null) {
      return changeNavBar(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return changeNavBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return changeNavBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (changeNavBar != null) {
      return changeNavBar(this);
    }
    return orElse();
  }
}

abstract class _ChangeNavBarEvent implements HomeEvent {
  const factory _ChangeNavBarEvent(final int index) = _$ChangeNavBarEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeNavBarEventImplCopyWith<_$ChangeNavBarEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartEventImplCopyWith<$Res> {
  factory _$$AddProductToCartEventImplCopyWith(
          _$AddProductToCartEventImpl value,
          $Res Function(_$AddProductToCartEventImpl) then) =
      __$$AddProductToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$AddProductToCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddProductToCartEventImpl>
    implements _$$AddProductToCartEventImplCopyWith<$Res> {
  __$$AddProductToCartEventImplCopyWithImpl(_$AddProductToCartEventImpl _value,
      $Res Function(_$AddProductToCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$AddProductToCartEventImpl(
      null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToCartEventImpl implements _AddProductToCartEvent {
  const _$AddProductToCartEventImpl(this.prodId);

  @override
  final String prodId;

  @override
  String toString() {
    return 'HomeEvent.addProductToCart(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => __$$AddProductToCartEventImplCopyWithImpl<
          _$AddProductToCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return addProductToCart(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return addProductToCart?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return addProductToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return addProductToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(this);
    }
    return orElse();
  }
}

abstract class _AddProductToCartEvent implements HomeEvent {
  const factory _AddProductToCartEvent(final String prodId) =
      _$AddProductToCartEventImpl;

  String get prodId;
  @JsonKey(ignore: true)
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductFromCartEventImplCopyWith<$Res> {
  factory _$$RemoveProductFromCartEventImplCopyWith(
          _$RemoveProductFromCartEventImpl value,
          $Res Function(_$RemoveProductFromCartEventImpl) then) =
      __$$RemoveProductFromCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$RemoveProductFromCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RemoveProductFromCartEventImpl>
    implements _$$RemoveProductFromCartEventImplCopyWith<$Res> {
  __$$RemoveProductFromCartEventImplCopyWithImpl(
      _$RemoveProductFromCartEventImpl _value,
      $Res Function(_$RemoveProductFromCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$RemoveProductFromCartEventImpl(
      null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveProductFromCartEventImpl implements _RemoveProductFromCartEvent {
  const _$RemoveProductFromCartEventImpl(this.prodId);

  @override
  final String prodId;

  @override
  String toString() {
    return 'HomeEvent.removeProductFromCart(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductFromCartEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductFromCartEventImplCopyWith<_$RemoveProductFromCartEventImpl>
      get copyWith => __$$RemoveProductFromCartEventImplCopyWithImpl<
          _$RemoveProductFromCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return removeProductFromCart(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return removeProductFromCart?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (removeProductFromCart != null) {
      return removeProductFromCart(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return removeProductFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return removeProductFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (removeProductFromCart != null) {
      return removeProductFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductFromCartEvent implements HomeEvent {
  const factory _RemoveProductFromCartEvent(final String prodId) =
      _$RemoveProductFromCartEventImpl;

  String get prodId;
  @JsonKey(ignore: true)
  _$$RemoveProductFromCartEventImplCopyWith<_$RemoveProductFromCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToWishListEventImplCopyWith<$Res> {
  factory _$$AddProductToWishListEventImplCopyWith(
          _$AddProductToWishListEventImpl value,
          $Res Function(_$AddProductToWishListEventImpl) then) =
      __$$AddProductToWishListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$AddProductToWishListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddProductToWishListEventImpl>
    implements _$$AddProductToWishListEventImplCopyWith<$Res> {
  __$$AddProductToWishListEventImplCopyWithImpl(
      _$AddProductToWishListEventImpl _value,
      $Res Function(_$AddProductToWishListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$AddProductToWishListEventImpl(
      null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToWishListEventImpl implements _AddProductToWishListEvent {
  const _$AddProductToWishListEventImpl(this.prodId);

  @override
  final String prodId;

  @override
  String toString() {
    return 'HomeEvent.addProductToWishList(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToWishListEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToWishListEventImplCopyWith<_$AddProductToWishListEventImpl>
      get copyWith => __$$AddProductToWishListEventImplCopyWithImpl<
          _$AddProductToWishListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return addProductToWishList(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return addProductToWishList?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (addProductToWishList != null) {
      return addProductToWishList(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return addProductToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return addProductToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (addProductToWishList != null) {
      return addProductToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddProductToWishListEvent implements HomeEvent {
  const factory _AddProductToWishListEvent(final String prodId) =
      _$AddProductToWishListEventImpl;

  String get prodId;
  @JsonKey(ignore: true)
  _$$AddProductToWishListEventImplCopyWith<_$AddProductToWishListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductFromWishListEventImplCopyWith<$Res> {
  factory _$$RemoveProductFromWishListEventImplCopyWith(
          _$RemoveProductFromWishListEventImpl value,
          $Res Function(_$RemoveProductFromWishListEventImpl) then) =
      __$$RemoveProductFromWishListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$RemoveProductFromWishListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RemoveProductFromWishListEventImpl>
    implements _$$RemoveProductFromWishListEventImplCopyWith<$Res> {
  __$$RemoveProductFromWishListEventImplCopyWithImpl(
      _$RemoveProductFromWishListEventImpl _value,
      $Res Function(_$RemoveProductFromWishListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$RemoveProductFromWishListEventImpl(
      null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveProductFromWishListEventImpl
    implements _RemoveProductFromWishListEvent {
  const _$RemoveProductFromWishListEventImpl(this.prodId);

  @override
  final String prodId;

  @override
  String toString() {
    return 'HomeEvent.removeProductFromWishList(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductFromWishListEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductFromWishListEventImplCopyWith<
          _$RemoveProductFromWishListEventImpl>
      get copyWith => __$$RemoveProductFromWishListEventImplCopyWithImpl<
          _$RemoveProductFromWishListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return removeProductFromWishList(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return removeProductFromWishList?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (removeProductFromWishList != null) {
      return removeProductFromWishList(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return removeProductFromWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return removeProductFromWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (removeProductFromWishList != null) {
      return removeProductFromWishList(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductFromWishListEvent implements HomeEvent {
  const factory _RemoveProductFromWishListEvent(final String prodId) =
      _$RemoveProductFromWishListEventImpl;

  String get prodId;
  @JsonKey(ignore: true)
  _$$RemoveProductFromWishListEventImplCopyWith<
          _$RemoveProductFromWishListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartEventImplCopyWith<$Res> {
  factory _$$GetCartEventImplCopyWith(
          _$GetCartEventImpl value, $Res Function(_$GetCartEventImpl) then) =
      __$$GetCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCartEventImpl>
    implements _$$GetCartEventImplCopyWith<$Res> {
  __$$GetCartEventImplCopyWithImpl(
      _$GetCartEventImpl _value, $Res Function(_$GetCartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartEventImpl implements _GetCartEvent {
  const _$GetCartEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCartEvent implements HomeEvent {
  const factory _GetCartEvent() = _$GetCartEventImpl;
}

/// @nodoc
abstract class _$$ClearCartEventImplCopyWith<$Res> {
  factory _$$ClearCartEventImplCopyWith(_$ClearCartEventImpl value,
          $Res Function(_$ClearCartEventImpl) then) =
      __$$ClearCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ClearCartEventImpl>
    implements _$$ClearCartEventImplCopyWith<$Res> {
  __$$ClearCartEventImplCopyWithImpl(
      _$ClearCartEventImpl _value, $Res Function(_$ClearCartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCartEventImpl implements _ClearCartEvent {
  const _$ClearCartEventImpl();

  @override
  String toString() {
    return 'HomeEvent.clearCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCartEvent implements HomeEvent {
  const factory _ClearCartEvent() = _$ClearCartEventImpl;
}

/// @nodoc
abstract class _$$GetWishListEventImplCopyWith<$Res> {
  factory _$$GetWishListEventImplCopyWith(_$GetWishListEventImpl value,
          $Res Function(_$GetWishListEventImpl) then) =
      __$$GetWishListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWishListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetWishListEventImpl>
    implements _$$GetWishListEventImplCopyWith<$Res> {
  __$$GetWishListEventImplCopyWithImpl(_$GetWishListEventImpl _value,
      $Res Function(_$GetWishListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWishListEventImpl implements _GetWishListEvent {
  const _$GetWishListEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getWishList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWishListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrands,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function() getProducts,
    required TResult Function(int catIndex) changeCatListIndex,
    required TResult Function(int index) changeNavBar,
    required TResult Function(String prodId) addProductToCart,
    required TResult Function(String prodId) removeProductFromCart,
    required TResult Function(String prodId) addProductToWishList,
    required TResult Function(String prodId) removeProductFromWishList,
    required TResult Function() getCart,
    required TResult Function() clearCart,
    required TResult Function() getWishList,
  }) {
    return getWishList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrands,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function()? getProducts,
    TResult? Function(int catIndex)? changeCatListIndex,
    TResult? Function(int index)? changeNavBar,
    TResult? Function(String prodId)? addProductToCart,
    TResult? Function(String prodId)? removeProductFromCart,
    TResult? Function(String prodId)? addProductToWishList,
    TResult? Function(String prodId)? removeProductFromWishList,
    TResult? Function()? getCart,
    TResult? Function()? clearCart,
    TResult? Function()? getWishList,
  }) {
    return getWishList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrands,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function()? getProducts,
    TResult Function(int catIndex)? changeCatListIndex,
    TResult Function(int index)? changeNavBar,
    TResult Function(String prodId)? addProductToCart,
    TResult Function(String prodId)? removeProductFromCart,
    TResult Function(String prodId)? addProductToWishList,
    TResult Function(String prodId)? removeProductFromWishList,
    TResult Function()? getCart,
    TResult Function()? clearCart,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBrandsEvent value) getBrands,
    required TResult Function(_GetCategoriesEvent value) getCategories,
    required TResult Function(_GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(_GetProductsEvent value) getProducts,
    required TResult Function(_ChangeCatListIndexEvent value)
        changeCatListIndex,
    required TResult Function(_ChangeNavBarEvent value) changeNavBar,
    required TResult Function(_AddProductToCartEvent value) addProductToCart,
    required TResult Function(_RemoveProductFromCartEvent value)
        removeProductFromCart,
    required TResult Function(_AddProductToWishListEvent value)
        addProductToWishList,
    required TResult Function(_RemoveProductFromWishListEvent value)
        removeProductFromWishList,
    required TResult Function(_GetCartEvent value) getCart,
    required TResult Function(_ClearCartEvent value) clearCart,
    required TResult Function(_GetWishListEvent value) getWishList,
  }) {
    return getWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBrandsEvent value)? getBrands,
    TResult? Function(_GetCategoriesEvent value)? getCategories,
    TResult? Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(_GetProductsEvent value)? getProducts,
    TResult? Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult? Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult? Function(_AddProductToCartEvent value)? addProductToCart,
    TResult? Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult? Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult? Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult? Function(_GetCartEvent value)? getCart,
    TResult? Function(_ClearCartEvent value)? clearCart,
    TResult? Function(_GetWishListEvent value)? getWishList,
  }) {
    return getWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBrandsEvent value)? getBrands,
    TResult Function(_GetCategoriesEvent value)? getCategories,
    TResult Function(_GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(_GetProductsEvent value)? getProducts,
    TResult Function(_ChangeCatListIndexEvent value)? changeCatListIndex,
    TResult Function(_ChangeNavBarEvent value)? changeNavBar,
    TResult Function(_AddProductToCartEvent value)? addProductToCart,
    TResult Function(_RemoveProductFromCartEvent value)? removeProductFromCart,
    TResult Function(_AddProductToWishListEvent value)? addProductToWishList,
    TResult Function(_RemoveProductFromWishListEvent value)?
        removeProductFromWishList,
    TResult Function(_GetCartEvent value)? getCart,
    TResult Function(_ClearCartEvent value)? clearCart,
    TResult Function(_GetWishListEvent value)? getWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList(this);
    }
    return orElse();
  }
}

abstract class _GetWishListEvent implements HomeEvent {
  const factory _GetWishListEvent() = _$GetWishListEventImpl;
}

/// @nodoc
mixin _$HomeState {
  RequestStatus get getBrandsStatus => throw _privateConstructorUsedError;
  RequestStatus get getCategoriesStatus => throw _privateConstructorUsedError;
  RequestStatus get getSubCategoriesStatus =>
      throw _privateConstructorUsedError;
  RequestStatus get getProductsStatus => throw _privateConstructorUsedError;
  RequestStatus get addProductToCartStatus =>
      throw _privateConstructorUsedError;
  RequestStatus get removeProductFromCartStatus =>
      throw _privateConstructorUsedError;
  RequestStatus get addProductToWishListStatus =>
      throw _privateConstructorUsedError;
  RequestStatus get removeProductFromWishListStatus =>
      throw _privateConstructorUsedError;
  RequestStatus get getCartStatus => throw _privateConstructorUsedError;
  RequestStatus get clearCartStatus => throw _privateConstructorUsedError;
  RequestStatus get getWishListStatus => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get catListIndex => throw _privateConstructorUsedError;
  int? get cartListLength => throw _privateConstructorUsedError;
  BrandsModel? get brandsModel => throw _privateConstructorUsedError;
  CategoriesModel? get categoriesModel => throw _privateConstructorUsedError;
  CategoriesModel? get subCategoriesModel => throw _privateConstructorUsedError;
  ProductsModel? get productsModel => throw _privateConstructorUsedError;
  AddCartProductModel? get addProductToCartModel =>
      throw _privateConstructorUsedError;
  RemoveFromCartModel? get removeFromCartModel =>
      throw _privateConstructorUsedError;
  AddRemoveWishlistProductModel? get addProductToWishListModel =>
      throw _privateConstructorUsedError;
  AddRemoveWishlistProductModel? get removeProductFromWishListModel =>
      throw _privateConstructorUsedError;
  CartProductsModel? get cartProductsModel =>
      throw _privateConstructorUsedError;
  ClearCartModel? get clearCartModel => throw _privateConstructorUsedError;
  WishlistProductsModel? get wishlistProductsModel =>
      throw _privateConstructorUsedError;
  Failures? get brandsFailure => throw _privateConstructorUsedError;
  Failures? get categoriesFailure => throw _privateConstructorUsedError;
  Failures? get subCategoriesFailure => throw _privateConstructorUsedError;
  Failures? get productsFailure => throw _privateConstructorUsedError;
  Failures? get getCartFailure => throw _privateConstructorUsedError;
  Failures? get clearCartFailure => throw _privateConstructorUsedError;
  Failures? get getWishListFailure => throw _privateConstructorUsedError;
  Failures? get addProductToWishListFailure =>
      throw _privateConstructorUsedError;
  Failures? get removeProductFromWishListFailure =>
      throw _privateConstructorUsedError;
  Failures? get addProductToCartFailure => throw _privateConstructorUsedError;
  Failures? get removeProductFromCartFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {RequestStatus getBrandsStatus,
      RequestStatus getCategoriesStatus,
      RequestStatus getSubCategoriesStatus,
      RequestStatus getProductsStatus,
      RequestStatus addProductToCartStatus,
      RequestStatus removeProductFromCartStatus,
      RequestStatus addProductToWishListStatus,
      RequestStatus removeProductFromWishListStatus,
      RequestStatus getCartStatus,
      RequestStatus clearCartStatus,
      RequestStatus getWishListStatus,
      int currentIndex,
      int catListIndex,
      int? cartListLength,
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
      Failures? removeProductFromCartFailure});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBrandsStatus = null,
    Object? getCategoriesStatus = null,
    Object? getSubCategoriesStatus = null,
    Object? getProductsStatus = null,
    Object? addProductToCartStatus = null,
    Object? removeProductFromCartStatus = null,
    Object? addProductToWishListStatus = null,
    Object? removeProductFromWishListStatus = null,
    Object? getCartStatus = null,
    Object? clearCartStatus = null,
    Object? getWishListStatus = null,
    Object? currentIndex = null,
    Object? catListIndex = null,
    Object? cartListLength = freezed,
    Object? brandsModel = freezed,
    Object? categoriesModel = freezed,
    Object? subCategoriesModel = freezed,
    Object? productsModel = freezed,
    Object? addProductToCartModel = freezed,
    Object? removeFromCartModel = freezed,
    Object? addProductToWishListModel = freezed,
    Object? removeProductFromWishListModel = freezed,
    Object? cartProductsModel = freezed,
    Object? clearCartModel = freezed,
    Object? wishlistProductsModel = freezed,
    Object? brandsFailure = freezed,
    Object? categoriesFailure = freezed,
    Object? subCategoriesFailure = freezed,
    Object? productsFailure = freezed,
    Object? getCartFailure = freezed,
    Object? clearCartFailure = freezed,
    Object? getWishListFailure = freezed,
    Object? addProductToWishListFailure = freezed,
    Object? removeProductFromWishListFailure = freezed,
    Object? addProductToCartFailure = freezed,
    Object? removeProductFromCartFailure = freezed,
  }) {
    return _then(_value.copyWith(
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getSubCategoriesStatus: null == getSubCategoriesStatus
          ? _value.getSubCategoriesStatus
          : getSubCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductsStatus: null == getProductsStatus
          ? _value.getProductsStatus
          : getProductsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addProductToCartStatus: null == addProductToCartStatus
          ? _value.addProductToCartStatus
          : addProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      removeProductFromCartStatus: null == removeProductFromCartStatus
          ? _value.removeProductFromCartStatus
          : removeProductFromCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addProductToWishListStatus: null == addProductToWishListStatus
          ? _value.addProductToWishListStatus
          : addProductToWishListStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      removeProductFromWishListStatus: null == removeProductFromWishListStatus
          ? _value.removeProductFromWishListStatus
          : removeProductFromWishListStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCartStatus: null == getCartStatus
          ? _value.getCartStatus
          : getCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      clearCartStatus: null == clearCartStatus
          ? _value.clearCartStatus
          : clearCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getWishListStatus: null == getWishListStatus
          ? _value.getWishListStatus
          : getWishListStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      catListIndex: null == catListIndex
          ? _value.catListIndex
          : catListIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartListLength: freezed == cartListLength
          ? _value.cartListLength
          : cartListLength // ignore: cast_nullable_to_non_nullable
              as int?,
      brandsModel: freezed == brandsModel
          ? _value.brandsModel
          : brandsModel // ignore: cast_nullable_to_non_nullable
              as BrandsModel?,
      categoriesModel: freezed == categoriesModel
          ? _value.categoriesModel
          : categoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      subCategoriesModel: freezed == subCategoriesModel
          ? _value.subCategoriesModel
          : subCategoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      productsModel: freezed == productsModel
          ? _value.productsModel
          : productsModel // ignore: cast_nullable_to_non_nullable
              as ProductsModel?,
      addProductToCartModel: freezed == addProductToCartModel
          ? _value.addProductToCartModel
          : addProductToCartModel // ignore: cast_nullable_to_non_nullable
              as AddCartProductModel?,
      removeFromCartModel: freezed == removeFromCartModel
          ? _value.removeFromCartModel
          : removeFromCartModel // ignore: cast_nullable_to_non_nullable
              as RemoveFromCartModel?,
      addProductToWishListModel: freezed == addProductToWishListModel
          ? _value.addProductToWishListModel
          : addProductToWishListModel // ignore: cast_nullable_to_non_nullable
              as AddRemoveWishlistProductModel?,
      removeProductFromWishListModel: freezed == removeProductFromWishListModel
          ? _value.removeProductFromWishListModel
          : removeProductFromWishListModel // ignore: cast_nullable_to_non_nullable
              as AddRemoveWishlistProductModel?,
      cartProductsModel: freezed == cartProductsModel
          ? _value.cartProductsModel
          : cartProductsModel // ignore: cast_nullable_to_non_nullable
              as CartProductsModel?,
      clearCartModel: freezed == clearCartModel
          ? _value.clearCartModel
          : clearCartModel // ignore: cast_nullable_to_non_nullable
              as ClearCartModel?,
      wishlistProductsModel: freezed == wishlistProductsModel
          ? _value.wishlistProductsModel
          : wishlistProductsModel // ignore: cast_nullable_to_non_nullable
              as WishlistProductsModel?,
      brandsFailure: freezed == brandsFailure
          ? _value.brandsFailure
          : brandsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      categoriesFailure: freezed == categoriesFailure
          ? _value.categoriesFailure
          : categoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      subCategoriesFailure: freezed == subCategoriesFailure
          ? _value.subCategoriesFailure
          : subCategoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productsFailure: freezed == productsFailure
          ? _value.productsFailure
          : productsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      getCartFailure: freezed == getCartFailure
          ? _value.getCartFailure
          : getCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      clearCartFailure: freezed == clearCartFailure
          ? _value.clearCartFailure
          : clearCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      getWishListFailure: freezed == getWishListFailure
          ? _value.getWishListFailure
          : getWishListFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addProductToWishListFailure: freezed == addProductToWishListFailure
          ? _value.addProductToWishListFailure
          : addProductToWishListFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      removeProductFromWishListFailure: freezed ==
              removeProductFromWishListFailure
          ? _value.removeProductFromWishListFailure
          : removeProductFromWishListFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addProductToCartFailure: freezed == addProductToCartFailure
          ? _value.addProductToCartFailure
          : addProductToCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      removeProductFromCartFailure: freezed == removeProductFromCartFailure
          ? _value.removeProductFromCartFailure
          : removeProductFromCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus getBrandsStatus,
      RequestStatus getCategoriesStatus,
      RequestStatus getSubCategoriesStatus,
      RequestStatus getProductsStatus,
      RequestStatus addProductToCartStatus,
      RequestStatus removeProductFromCartStatus,
      RequestStatus addProductToWishListStatus,
      RequestStatus removeProductFromWishListStatus,
      RequestStatus getCartStatus,
      RequestStatus clearCartStatus,
      RequestStatus getWishListStatus,
      int currentIndex,
      int catListIndex,
      int? cartListLength,
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
      Failures? removeProductFromCartFailure});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBrandsStatus = null,
    Object? getCategoriesStatus = null,
    Object? getSubCategoriesStatus = null,
    Object? getProductsStatus = null,
    Object? addProductToCartStatus = null,
    Object? removeProductFromCartStatus = null,
    Object? addProductToWishListStatus = null,
    Object? removeProductFromWishListStatus = null,
    Object? getCartStatus = null,
    Object? clearCartStatus = null,
    Object? getWishListStatus = null,
    Object? currentIndex = null,
    Object? catListIndex = null,
    Object? cartListLength = freezed,
    Object? brandsModel = freezed,
    Object? categoriesModel = freezed,
    Object? subCategoriesModel = freezed,
    Object? productsModel = freezed,
    Object? addProductToCartModel = freezed,
    Object? removeFromCartModel = freezed,
    Object? addProductToWishListModel = freezed,
    Object? removeProductFromWishListModel = freezed,
    Object? cartProductsModel = freezed,
    Object? clearCartModel = freezed,
    Object? wishlistProductsModel = freezed,
    Object? brandsFailure = freezed,
    Object? categoriesFailure = freezed,
    Object? subCategoriesFailure = freezed,
    Object? productsFailure = freezed,
    Object? getCartFailure = freezed,
    Object? clearCartFailure = freezed,
    Object? getWishListFailure = freezed,
    Object? addProductToWishListFailure = freezed,
    Object? removeProductFromWishListFailure = freezed,
    Object? addProductToCartFailure = freezed,
    Object? removeProductFromCartFailure = freezed,
  }) {
    return _then(_$HomeStateImpl(
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getSubCategoriesStatus: null == getSubCategoriesStatus
          ? _value.getSubCategoriesStatus
          : getSubCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductsStatus: null == getProductsStatus
          ? _value.getProductsStatus
          : getProductsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addProductToCartStatus: null == addProductToCartStatus
          ? _value.addProductToCartStatus
          : addProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      removeProductFromCartStatus: null == removeProductFromCartStatus
          ? _value.removeProductFromCartStatus
          : removeProductFromCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addProductToWishListStatus: null == addProductToWishListStatus
          ? _value.addProductToWishListStatus
          : addProductToWishListStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      removeProductFromWishListStatus: null == removeProductFromWishListStatus
          ? _value.removeProductFromWishListStatus
          : removeProductFromWishListStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getCartStatus: null == getCartStatus
          ? _value.getCartStatus
          : getCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      clearCartStatus: null == clearCartStatus
          ? _value.clearCartStatus
          : clearCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getWishListStatus: null == getWishListStatus
          ? _value.getWishListStatus
          : getWishListStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      catListIndex: null == catListIndex
          ? _value.catListIndex
          : catListIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartListLength: freezed == cartListLength
          ? _value.cartListLength
          : cartListLength // ignore: cast_nullable_to_non_nullable
              as int?,
      brandsModel: freezed == brandsModel
          ? _value.brandsModel
          : brandsModel // ignore: cast_nullable_to_non_nullable
              as BrandsModel?,
      categoriesModel: freezed == categoriesModel
          ? _value.categoriesModel
          : categoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      subCategoriesModel: freezed == subCategoriesModel
          ? _value.subCategoriesModel
          : subCategoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      productsModel: freezed == productsModel
          ? _value.productsModel
          : productsModel // ignore: cast_nullable_to_non_nullable
              as ProductsModel?,
      addProductToCartModel: freezed == addProductToCartModel
          ? _value.addProductToCartModel
          : addProductToCartModel // ignore: cast_nullable_to_non_nullable
              as AddCartProductModel?,
      removeFromCartModel: freezed == removeFromCartModel
          ? _value.removeFromCartModel
          : removeFromCartModel // ignore: cast_nullable_to_non_nullable
              as RemoveFromCartModel?,
      addProductToWishListModel: freezed == addProductToWishListModel
          ? _value.addProductToWishListModel
          : addProductToWishListModel // ignore: cast_nullable_to_non_nullable
              as AddRemoveWishlistProductModel?,
      removeProductFromWishListModel: freezed == removeProductFromWishListModel
          ? _value.removeProductFromWishListModel
          : removeProductFromWishListModel // ignore: cast_nullable_to_non_nullable
              as AddRemoveWishlistProductModel?,
      cartProductsModel: freezed == cartProductsModel
          ? _value.cartProductsModel
          : cartProductsModel // ignore: cast_nullable_to_non_nullable
              as CartProductsModel?,
      clearCartModel: freezed == clearCartModel
          ? _value.clearCartModel
          : clearCartModel // ignore: cast_nullable_to_non_nullable
              as ClearCartModel?,
      wishlistProductsModel: freezed == wishlistProductsModel
          ? _value.wishlistProductsModel
          : wishlistProductsModel // ignore: cast_nullable_to_non_nullable
              as WishlistProductsModel?,
      brandsFailure: freezed == brandsFailure
          ? _value.brandsFailure
          : brandsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      categoriesFailure: freezed == categoriesFailure
          ? _value.categoriesFailure
          : categoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      subCategoriesFailure: freezed == subCategoriesFailure
          ? _value.subCategoriesFailure
          : subCategoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productsFailure: freezed == productsFailure
          ? _value.productsFailure
          : productsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      getCartFailure: freezed == getCartFailure
          ? _value.getCartFailure
          : getCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      clearCartFailure: freezed == clearCartFailure
          ? _value.clearCartFailure
          : clearCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      getWishListFailure: freezed == getWishListFailure
          ? _value.getWishListFailure
          : getWishListFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addProductToWishListFailure: freezed == addProductToWishListFailure
          ? _value.addProductToWishListFailure
          : addProductToWishListFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      removeProductFromWishListFailure: freezed ==
              removeProductFromWishListFailure
          ? _value.removeProductFromWishListFailure
          : removeProductFromWishListFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addProductToCartFailure: freezed == addProductToCartFailure
          ? _value.addProductToCartFailure
          : addProductToCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      removeProductFromCartFailure: freezed == removeProductFromCartFailure
          ? _value.removeProductFromCartFailure
          : removeProductFromCartFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.getBrandsStatus = RequestStatus.init,
      this.getCategoriesStatus = RequestStatus.init,
      this.getSubCategoriesStatus = RequestStatus.init,
      this.getProductsStatus = RequestStatus.init,
      this.addProductToCartStatus = RequestStatus.init,
      this.removeProductFromCartStatus = RequestStatus.init,
      this.addProductToWishListStatus = RequestStatus.init,
      this.removeProductFromWishListStatus = RequestStatus.init,
      this.getCartStatus = RequestStatus.init,
      this.clearCartStatus = RequestStatus.init,
      this.getWishListStatus = RequestStatus.init,
      this.currentIndex = 0,
      this.catListIndex = 0,
      this.cartListLength = 0,
      this.brandsModel,
      this.categoriesModel,
      this.subCategoriesModel,
      this.productsModel,
      this.addProductToCartModel,
      this.removeFromCartModel,
      this.addProductToWishListModel,
      this.removeProductFromWishListModel,
      this.cartProductsModel,
      this.clearCartModel,
      this.wishlistProductsModel,
      this.brandsFailure,
      this.categoriesFailure,
      this.subCategoriesFailure,
      this.productsFailure,
      this.getCartFailure,
      this.clearCartFailure,
      this.getWishListFailure,
      this.addProductToWishListFailure,
      this.removeProductFromWishListFailure,
      this.addProductToCartFailure,
      this.removeProductFromCartFailure});

  @override
  @JsonKey()
  final RequestStatus getBrandsStatus;
  @override
  @JsonKey()
  final RequestStatus getCategoriesStatus;
  @override
  @JsonKey()
  final RequestStatus getSubCategoriesStatus;
  @override
  @JsonKey()
  final RequestStatus getProductsStatus;
  @override
  @JsonKey()
  final RequestStatus addProductToCartStatus;
  @override
  @JsonKey()
  final RequestStatus removeProductFromCartStatus;
  @override
  @JsonKey()
  final RequestStatus addProductToWishListStatus;
  @override
  @JsonKey()
  final RequestStatus removeProductFromWishListStatus;
  @override
  @JsonKey()
  final RequestStatus getCartStatus;
  @override
  @JsonKey()
  final RequestStatus clearCartStatus;
  @override
  @JsonKey()
  final RequestStatus getWishListStatus;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int catListIndex;
  @override
  @JsonKey()
  final int? cartListLength;
  @override
  final BrandsModel? brandsModel;
  @override
  final CategoriesModel? categoriesModel;
  @override
  final CategoriesModel? subCategoriesModel;
  @override
  final ProductsModel? productsModel;
  @override
  final AddCartProductModel? addProductToCartModel;
  @override
  final RemoveFromCartModel? removeFromCartModel;
  @override
  final AddRemoveWishlistProductModel? addProductToWishListModel;
  @override
  final AddRemoveWishlistProductModel? removeProductFromWishListModel;
  @override
  final CartProductsModel? cartProductsModel;
  @override
  final ClearCartModel? clearCartModel;
  @override
  final WishlistProductsModel? wishlistProductsModel;
  @override
  final Failures? brandsFailure;
  @override
  final Failures? categoriesFailure;
  @override
  final Failures? subCategoriesFailure;
  @override
  final Failures? productsFailure;
  @override
  final Failures? getCartFailure;
  @override
  final Failures? clearCartFailure;
  @override
  final Failures? getWishListFailure;
  @override
  final Failures? addProductToWishListFailure;
  @override
  final Failures? removeProductFromWishListFailure;
  @override
  final Failures? addProductToCartFailure;
  @override
  final Failures? removeProductFromCartFailure;

  @override
  String toString() {
    return 'HomeState(getBrandsStatus: $getBrandsStatus, getCategoriesStatus: $getCategoriesStatus, getSubCategoriesStatus: $getSubCategoriesStatus, getProductsStatus: $getProductsStatus, addProductToCartStatus: $addProductToCartStatus, removeProductFromCartStatus: $removeProductFromCartStatus, addProductToWishListStatus: $addProductToWishListStatus, removeProductFromWishListStatus: $removeProductFromWishListStatus, getCartStatus: $getCartStatus, clearCartStatus: $clearCartStatus, getWishListStatus: $getWishListStatus, currentIndex: $currentIndex, catListIndex: $catListIndex, cartListLength: $cartListLength, brandsModel: $brandsModel, categoriesModel: $categoriesModel, subCategoriesModel: $subCategoriesModel, productsModel: $productsModel, addProductToCartModel: $addProductToCartModel, removeFromCartModel: $removeFromCartModel, addProductToWishListModel: $addProductToWishListModel, removeProductFromWishListModel: $removeProductFromWishListModel, cartProductsModel: $cartProductsModel, clearCartModel: $clearCartModel, wishlistProductsModel: $wishlistProductsModel, brandsFailure: $brandsFailure, categoriesFailure: $categoriesFailure, subCategoriesFailure: $subCategoriesFailure, productsFailure: $productsFailure, getCartFailure: $getCartFailure, clearCartFailure: $clearCartFailure, getWishListFailure: $getWishListFailure, addProductToWishListFailure: $addProductToWishListFailure, removeProductFromWishListFailure: $removeProductFromWishListFailure, addProductToCartFailure: $addProductToCartFailure, removeProductFromCartFailure: $removeProductFromCartFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getBrandsStatus, getBrandsStatus) ||
                other.getBrandsStatus == getBrandsStatus) &&
            (identical(other.getCategoriesStatus, getCategoriesStatus) ||
                other.getCategoriesStatus == getCategoriesStatus) &&
            (identical(other.getSubCategoriesStatus, getSubCategoriesStatus) ||
                other.getSubCategoriesStatus == getSubCategoriesStatus) &&
            (identical(other.getProductsStatus, getProductsStatus) ||
                other.getProductsStatus == getProductsStatus) &&
            (identical(other.addProductToCartStatus, addProductToCartStatus) ||
                other.addProductToCartStatus == addProductToCartStatus) &&
            (identical(other.removeProductFromCartStatus, removeProductFromCartStatus) ||
                other.removeProductFromCartStatus ==
                    removeProductFromCartStatus) &&
            (identical(other.addProductToWishListStatus, addProductToWishListStatus) ||
                other.addProductToWishListStatus ==
                    addProductToWishListStatus) &&
            (identical(other.removeProductFromWishListStatus, removeProductFromWishListStatus) ||
                other.removeProductFromWishListStatus ==
                    removeProductFromWishListStatus) &&
            (identical(other.getCartStatus, getCartStatus) ||
                other.getCartStatus == getCartStatus) &&
            (identical(other.clearCartStatus, clearCartStatus) ||
                other.clearCartStatus == clearCartStatus) &&
            (identical(other.getWishListStatus, getWishListStatus) ||
                other.getWishListStatus == getWishListStatus) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.catListIndex, catListIndex) ||
                other.catListIndex == catListIndex) &&
            (identical(other.cartListLength, cartListLength) ||
                other.cartListLength == cartListLength) &&
            (identical(other.brandsModel, brandsModel) ||
                other.brandsModel == brandsModel) &&
            (identical(other.categoriesModel, categoriesModel) ||
                other.categoriesModel == categoriesModel) &&
            (identical(other.subCategoriesModel, subCategoriesModel) ||
                other.subCategoriesModel == subCategoriesModel) &&
            (identical(other.productsModel, productsModel) ||
                other.productsModel == productsModel) &&
            (identical(other.addProductToCartModel, addProductToCartModel) ||
                other.addProductToCartModel == addProductToCartModel) &&
            (identical(other.removeFromCartModel, removeFromCartModel) ||
                other.removeFromCartModel == removeFromCartModel) &&
            (identical(other.addProductToWishListModel, addProductToWishListModel) ||
                other.addProductToWishListModel == addProductToWishListModel) &&
            (identical(other.removeProductFromWishListModel, removeProductFromWishListModel) ||
                other.removeProductFromWishListModel ==
                    removeProductFromWishListModel) &&
            (identical(other.cartProductsModel, cartProductsModel) ||
                other.cartProductsModel == cartProductsModel) &&
            (identical(other.clearCartModel, clearCartModel) || other.clearCartModel == clearCartModel) &&
            (identical(other.wishlistProductsModel, wishlistProductsModel) || other.wishlistProductsModel == wishlistProductsModel) &&
            (identical(other.brandsFailure, brandsFailure) || other.brandsFailure == brandsFailure) &&
            (identical(other.categoriesFailure, categoriesFailure) || other.categoriesFailure == categoriesFailure) &&
            (identical(other.subCategoriesFailure, subCategoriesFailure) || other.subCategoriesFailure == subCategoriesFailure) &&
            (identical(other.productsFailure, productsFailure) || other.productsFailure == productsFailure) &&
            (identical(other.getCartFailure, getCartFailure) || other.getCartFailure == getCartFailure) &&
            (identical(other.clearCartFailure, clearCartFailure) || other.clearCartFailure == clearCartFailure) &&
            (identical(other.getWishListFailure, getWishListFailure) || other.getWishListFailure == getWishListFailure) &&
            (identical(other.addProductToWishListFailure, addProductToWishListFailure) || other.addProductToWishListFailure == addProductToWishListFailure) &&
            (identical(other.removeProductFromWishListFailure, removeProductFromWishListFailure) || other.removeProductFromWishListFailure == removeProductFromWishListFailure) &&
            (identical(other.addProductToCartFailure, addProductToCartFailure) || other.addProductToCartFailure == addProductToCartFailure) &&
            (identical(other.removeProductFromCartFailure, removeProductFromCartFailure) || other.removeProductFromCartFailure == removeProductFromCartFailure));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        getBrandsStatus,
        getCategoriesStatus,
        getSubCategoriesStatus,
        getProductsStatus,
        addProductToCartStatus,
        removeProductFromCartStatus,
        addProductToWishListStatus,
        removeProductFromWishListStatus,
        getCartStatus,
        clearCartStatus,
        getWishListStatus,
        currentIndex,
        catListIndex,
        cartListLength,
        brandsModel,
        categoriesModel,
        subCategoriesModel,
        productsModel,
        addProductToCartModel,
        removeFromCartModel,
        addProductToWishListModel,
        removeProductFromWishListModel,
        cartProductsModel,
        clearCartModel,
        wishlistProductsModel,
        brandsFailure,
        categoriesFailure,
        subCategoriesFailure,
        productsFailure,
        getCartFailure,
        clearCartFailure,
        getWishListFailure,
        addProductToWishListFailure,
        removeProductFromWishListFailure,
        addProductToCartFailure,
        removeProductFromCartFailure
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final RequestStatus getBrandsStatus,
      final RequestStatus getCategoriesStatus,
      final RequestStatus getSubCategoriesStatus,
      final RequestStatus getProductsStatus,
      final RequestStatus addProductToCartStatus,
      final RequestStatus removeProductFromCartStatus,
      final RequestStatus addProductToWishListStatus,
      final RequestStatus removeProductFromWishListStatus,
      final RequestStatus getCartStatus,
      final RequestStatus clearCartStatus,
      final RequestStatus getWishListStatus,
      final int currentIndex,
      final int catListIndex,
      final int? cartListLength,
      final BrandsModel? brandsModel,
      final CategoriesModel? categoriesModel,
      final CategoriesModel? subCategoriesModel,
      final ProductsModel? productsModel,
      final AddCartProductModel? addProductToCartModel,
      final RemoveFromCartModel? removeFromCartModel,
      final AddRemoveWishlistProductModel? addProductToWishListModel,
      final AddRemoveWishlistProductModel? removeProductFromWishListModel,
      final CartProductsModel? cartProductsModel,
      final ClearCartModel? clearCartModel,
      final WishlistProductsModel? wishlistProductsModel,
      final Failures? brandsFailure,
      final Failures? categoriesFailure,
      final Failures? subCategoriesFailure,
      final Failures? productsFailure,
      final Failures? getCartFailure,
      final Failures? clearCartFailure,
      final Failures? getWishListFailure,
      final Failures? addProductToWishListFailure,
      final Failures? removeProductFromWishListFailure,
      final Failures? addProductToCartFailure,
      final Failures? removeProductFromCartFailure}) = _$HomeStateImpl;

  @override
  RequestStatus get getBrandsStatus;
  @override
  RequestStatus get getCategoriesStatus;
  @override
  RequestStatus get getSubCategoriesStatus;
  @override
  RequestStatus get getProductsStatus;
  @override
  RequestStatus get addProductToCartStatus;
  @override
  RequestStatus get removeProductFromCartStatus;
  @override
  RequestStatus get addProductToWishListStatus;
  @override
  RequestStatus get removeProductFromWishListStatus;
  @override
  RequestStatus get getCartStatus;
  @override
  RequestStatus get clearCartStatus;
  @override
  RequestStatus get getWishListStatus;
  @override
  int get currentIndex;
  @override
  int get catListIndex;
  @override
  int? get cartListLength;
  @override
  BrandsModel? get brandsModel;
  @override
  CategoriesModel? get categoriesModel;
  @override
  CategoriesModel? get subCategoriesModel;
  @override
  ProductsModel? get productsModel;
  @override
  AddCartProductModel? get addProductToCartModel;
  @override
  RemoveFromCartModel? get removeFromCartModel;
  @override
  AddRemoveWishlistProductModel? get addProductToWishListModel;
  @override
  AddRemoveWishlistProductModel? get removeProductFromWishListModel;
  @override
  CartProductsModel? get cartProductsModel;
  @override
  ClearCartModel? get clearCartModel;
  @override
  WishlistProductsModel? get wishlistProductsModel;
  @override
  Failures? get brandsFailure;
  @override
  Failures? get categoriesFailure;
  @override
  Failures? get subCategoriesFailure;
  @override
  Failures? get productsFailure;
  @override
  Failures? get getCartFailure;
  @override
  Failures? get clearCartFailure;
  @override
  Failures? get getWishListFailure;
  @override
  Failures? get addProductToWishListFailure;
  @override
  Failures? get removeProductFromWishListFailure;
  @override
  Failures? get addProductToCartFailure;
  @override
  Failures? get removeProductFromCartFailure;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
