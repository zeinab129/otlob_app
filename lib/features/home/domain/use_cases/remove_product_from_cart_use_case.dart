import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/remove_from_cart_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveProductFromCartUseCase {
  HomeRepo repo;

  RemoveProductFromCartUseCase(this.repo);

  Future<Either<Failures, RemoveFromCartModel>> call(String prodId) =>
      repo.removeFromCart(prodId);
}
