import 'package:dartz/dartz.dart';
import 'package:fresh_cart/core/entities/product_entity.dart';
import 'package:fresh_cart/core/errors/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failures, List<ProductEntity>>> getProducts();
  Future<Either<Failures, List<ProductEntity>>> getBestSellingProducts();
}
