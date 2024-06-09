import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
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
import 'package:ecommerce_app/features/home/domain/use_cases/add_product_to_cart.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/add_product_to_wish_list_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/clear_cart_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_cart_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_products_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_sub_categories_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_wish_list_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/remove_product_from_cart_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/remove_product_from_wish_list_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetBrandsUseCase getBrandsUseCase;
  GetCategoriesUseCase getCategoriesUseCase;
  GetSubCategoriesUseCase getSubCategoriesUseCase;
  GetProductsUseCase getProductsUseCase;
  AddProductToCartUseCase addProductToCartUseCase;
  RemoveProductFromCartUseCase removeProductFromCartUseCase;
  GetCartUseCase getCartUseCase;
  GetWishListUseCase getWishListUseCase;
  AddProductToWishListUseCase addProductToWishListUseCase;
  RemoveProductFromWishListUseCase removeProductFromWishListUseCase;
  ClearCartUseCase clearCartUseCase;

  HomeBloc(
      {required this.getBrandsUseCase,
      required this.getCategoriesUseCase,
      required this.getProductsUseCase,
      required this.getSubCategoriesUseCase,
      required this.addProductToCartUseCase,
      required this.getCartUseCase,
      required this.getWishListUseCase,
      required this.addProductToWishListUseCase,
      required this.removeProductFromWishListUseCase,
      required this.removeProductFromCartUseCase,
      required this.clearCartUseCase})
      : super(const HomeState()) {
    on<_GetBrandsEvent>((event, emit) async {
      emit(state.copyWith(getBrandsStatus: RequestStatus.loading));
      var result = await getBrandsUseCase();
      result.fold((l) {
        emit(
          state.copyWith(
              getBrandsStatus: RequestStatus.failure, brandsFailure: l),
        );
      }, (r) {
        emit(
          state.copyWith(
              getBrandsStatus: RequestStatus.success, brandsModel: r),
        );
      });
    });

    on<_GetCategoriesEvent>(
      (event, emit) async {
        emit(state.copyWith(getCategoriesStatus: RequestStatus.loading));
        var result = await getCategoriesUseCase();

        result.fold((l) {
          emit(state.copyWith(
              getCategoriesStatus: RequestStatus.failure,
              categoriesFailure: l));
        }, (r) {
          emit(state.copyWith(
              getCategoriesStatus: RequestStatus.success, categoriesModel: r));
        });
      },
    );

    on<_GetSubCategoriesEvent>(
      (event, emit) async {
        emit(state.copyWith(getSubCategoriesStatus: RequestStatus.loading));
        var result = await getSubCategoriesUseCase(event.catId);

        result.fold((l) {
          emit(state.copyWith(
              getSubCategoriesStatus: RequestStatus.failure,
              subCategoriesFailure: l));
        }, (r) {
          emit(state.copyWith(
              getSubCategoriesStatus: RequestStatus.success,
              subCategoriesModel: r,
              getCategoriesStatus: RequestStatus.init));
        });
      },
    );

    on<_GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsStatus: RequestStatus.loading));
      var result = await getProductsUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.failure, productsFailure: l));
      }, (r) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.success, productsModel: r));
      });
    });

    on<_AddProductToCartEvent>((event, emit) async {
      emit(state.copyWith(addProductToCartStatus: RequestStatus.loading));
      var result = await addProductToCartUseCase(event.prodId);

      result.fold((l) {
        emit(state.copyWith(
          addProductToCartStatus: RequestStatus.failure,
          addProductToCartFailure: l,
        ));
      }, (r) {
        emit(state.copyWith(
            addProductToCartStatus: RequestStatus.success,
            addProductToCartModel: r));
      });
    });

    on<_GetCartEvent>((event, emit) async {
      emit(state.copyWith(
          getCartStatus: RequestStatus.loading,
          addProductToCartStatus: RequestStatus.init,
          removeProductFromCartStatus: RequestStatus.init,
          clearCartStatus: RequestStatus.init));
      var result = await getCartUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getCartStatus: RequestStatus.failure, getCartFailure: l));
      }, (r) {
        emit(state.copyWith(
            getCartStatus: RequestStatus.success,
            cartListLength: r.numOfCartItems,
            cartProductsModel: r));
      });
    });

    on<_ClearCartEvent>((event, emit) async {
      emit(state.copyWith(
        clearCartStatus: RequestStatus.loading,
      ));
      var result = await clearCartUseCase();

      result.fold((l) {
        emit(state.copyWith(
            clearCartStatus: RequestStatus.failure, clearCartFailure: l));
      }, (r) {
        emit(state.copyWith(
            clearCartStatus: RequestStatus.success, clearCartModel: r));
      });
    });

    on<_GetWishListEvent>((event, emit) async {
      emit(state.copyWith(
          getCartStatus: RequestStatus.loading,
          addProductToWishListStatus: RequestStatus.init,
          removeProductFromWishListStatus: RequestStatus.init));
      var result = await getWishListUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getWishListStatus: RequestStatus.failure, getWishListFailure: l));
      }, (r) {
        emit(state.copyWith(
            getWishListStatus: RequestStatus.success,
            wishlistProductsModel: r));
      });
    });

    on<_AddProductToWishListEvent>((event, emit) async {
      emit(state.copyWith(addProductToWishListStatus: RequestStatus.loading));
      var result = await addProductToWishListUseCase(event.prodId);

      result.fold((l) {
        emit(state.copyWith(
          addProductToWishListStatus: RequestStatus.failure,
          addProductToWishListFailure: l,
        ));
      }, (r) {
        emit(state.copyWith(
            addProductToWishListStatus: RequestStatus.success,
            addProductToWishListModel: r));
      });
    });

    on<_RemoveProductFromWishListEvent>((event, emit) async {
      emit(state.copyWith(
          removeProductFromWishListStatus: RequestStatus.loading));
      var result = await removeProductFromWishListUseCase(event.prodId);

      result.fold((l) {
        emit(state.copyWith(
          removeProductFromWishListStatus: RequestStatus.failure,
          removeProductFromWishListFailure: l,
        ));
      }, (r) {
        emit(state.copyWith(
            removeProductFromWishListStatus: RequestStatus.success,
            removeProductFromWishListModel: r));
      });
    });

    on<_RemoveProductFromCartEvent>((event, emit) async {
      emit(state.copyWith(removeProductFromCartStatus: RequestStatus.loading));
      var result = await removeProductFromCartUseCase(event.prodId);

      result.fold((l) {
        emit(state.copyWith(
          removeProductFromCartStatus: RequestStatus.failure,
          removeProductFromCartFailure: l,
        ));
      }, (r) {
        emit(
            state.copyWith(removeProductFromCartStatus: RequestStatus.success));
      });
    });

    on<_ChangeNavBarEvent>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });

    on<_ChangeCatListIndexEvent>((event, emit) {
      emit(state.copyWith(catListIndex: event.catIndex));
    });
  }
}
