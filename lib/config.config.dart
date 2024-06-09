// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/api_manager.dart' as _i3;
import 'features/home/data/data_sources/remote/home_remote_ds.dart' as _i4;
import 'features/home/data/data_sources/remote/home_remote_ds_impl.dart' as _i5;
import 'features/home/data/repositories/home_repo_impl.dart' as _i7;
import 'features/home/domain/repositories/home_repo.dart' as _i6;
import 'features/home/domain/use_cases/add_product_to_cart.dart' as _i10;
import 'features/home/domain/use_cases/add_product_to_wish_list_use_case.dart'
    as _i11;
import 'features/home/domain/use_cases/clear_cart_use_case.dart' as _i12;
import 'features/home/domain/use_cases/get_brands_use_case.dart' as _i13;
import 'features/home/domain/use_cases/get_cart_use_case.dart' as _i14;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i15;
import 'features/home/domain/use_cases/get_products_use_case.dart' as _i16;
import 'features/home/domain/use_cases/get_sub_categories_use_case.dart'
    as _i17;
import 'features/home/domain/use_cases/get_wish_list_use_case.dart' as _i18;
import 'features/home/domain/use_cases/remove_product_from_cart_use_case.dart'
    as _i8;
import 'features/home/domain/use_cases/remove_product_from_wish_list_use_case.dart'
    as _i9;
import 'features/home/presentation/bloc/home_bloc.dart' as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.HomeRemoteDS>(
        () => _i5.HomeRemoteDSImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.HomeRepo>(() => _i7.HomeRepoImpl(gh<_i4.HomeRemoteDS>()));
    gh.factory<_i8.RemoveProductFromCartUseCase>(
        () => _i8.RemoveProductFromCartUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i9.RemoveProductFromWishListUseCase>(
        () => _i9.RemoveProductFromWishListUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i10.AddProductToCartUseCase>(
        () => _i10.AddProductToCartUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i11.AddProductToWishListUseCase>(
        () => _i11.AddProductToWishListUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i12.ClearCartUseCase>(
        () => _i12.ClearCartUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i13.GetBrandsUseCase>(
        () => _i13.GetBrandsUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i14.GetCartUseCase>(
        () => _i14.GetCartUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i15.GetCategoriesUseCase>(
        () => _i15.GetCategoriesUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i16.GetProductsUseCase>(
        () => _i16.GetProductsUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i17.GetSubCategoriesUseCase>(
        () => _i17.GetSubCategoriesUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i18.GetWishListUseCase>(
        () => _i18.GetWishListUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(
          getBrandsUseCase: gh<_i13.GetBrandsUseCase>(),
          getCategoriesUseCase: gh<_i15.GetCategoriesUseCase>(),
          getProductsUseCase: gh<_i16.GetProductsUseCase>(),
          getSubCategoriesUseCase: gh<_i17.GetSubCategoriesUseCase>(),
          addProductToCartUseCase: gh<_i10.AddProductToCartUseCase>(),
          getCartUseCase: gh<_i14.GetCartUseCase>(),
          getWishListUseCase: gh<_i18.GetWishListUseCase>(),
          addProductToWishListUseCase: gh<_i11.AddProductToWishListUseCase>(),
          removeProductFromWishListUseCase:
              gh<_i9.RemoveProductFromWishListUseCase>(),
          removeProductFromCartUseCase: gh<_i8.RemoveProductFromCartUseCase>(),
          clearCartUseCase: gh<_i12.ClearCartUseCase>(),
        ));
    return this;
  }
}
