import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/add_remove_wishlist_product_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveProductFromWishListUseCase {
  HomeRepo repo;

  RemoveProductFromWishListUseCase(this.repo);

  Future<Either<Failures, AddRemoveWishlistProductModel>> call(String prodId) =>
      repo.removeProductFromWishList(prodId);
}
