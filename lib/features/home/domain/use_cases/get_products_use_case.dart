import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUseCase {
  HomeRepo homeRepo;

  GetProductsUseCase(this.homeRepo);

  Future<Either<Failures, ProductsModel>> call() => homeRepo.getProducts();
}
