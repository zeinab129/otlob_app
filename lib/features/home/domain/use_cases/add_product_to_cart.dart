import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/add_cart_product_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddProductToCartUseCase {
  HomeRepo repo;

  AddProductToCartUseCase(this.repo);

  Future<Either<Failures, AddCartProductModel>> call(String prodId) => repo.addProductTCart(prodId);

}