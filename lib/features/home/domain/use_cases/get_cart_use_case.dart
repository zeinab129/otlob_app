import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/cart_products_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase {
  HomeRepo repo;

  GetCartUseCase(this.repo);

  Future<Either<Failures, CartProductsModel>> call() => repo.getCart();
}
