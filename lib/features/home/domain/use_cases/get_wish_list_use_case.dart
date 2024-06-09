import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/wishlist_products_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWishListUseCase {
  HomeRepo repo;

  GetWishListUseCase(this.repo);

  Future<Either<Failures, WishlistProductsModel>> call() => repo.getWishList();
}
