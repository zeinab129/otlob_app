import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubCategoriesUseCase {
  HomeRepo repo;

  GetSubCategoriesUseCase(this.repo);

  Future<Either<Failures, CategoriesModel>> call(String catId) => repo.getSubCategories(catId);
}
