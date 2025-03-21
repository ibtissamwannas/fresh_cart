import 'package:dartz/dartz.dart';
import 'package:fresh_cart/features/checkout/domain/entities/order_entity.dart';

import '../../errors/failures.dart';

abstract class OrdersRepo {
  Future<Either<Failures, void>> addOrder({required OrderInputEntity order});
}
