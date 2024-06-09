import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/clear_cart_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearCartUseCase {
  HomeRepo repo;

  ClearCartUseCase(this.repo);

  Future<Either<Failures, ClearCartModel>> call() => repo.clearCart();
}
