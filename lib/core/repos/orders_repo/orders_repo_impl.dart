import 'package:dartz/dartz.dart';
import 'package:fresh_cart/core/errors/failures.dart';
import 'package:fresh_cart/core/repos/orders_repo/orders_repo.dart';
import 'package:fresh_cart/core/services/data_service.dart';
import 'package:fresh_cart/core/utils/backend_end_points.dart';
import 'package:fresh_cart/features/checkout/data/models/order_model.dart';
import 'package:fresh_cart/features/checkout/domain/entities/order_entity.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService dataBaseService;

  OrdersRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failures, void>> addOrder(
      {required OrderInputEntity order}) async {
    try {
      var orderModel = OrderModel.fromEntity(order);
      await dataBaseService.addData(
        path: BackendEndpoint.addOrder,
        documentId: orderModel.orderId,
        data: orderModel.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
