import 'package:fresh_cart/core/repos/orders_repo/orders_repo.dart';
import 'package:fresh_cart/core/repos/orders_repo/orders_repo_impl.dart';
import 'package:fresh_cart/core/repos/products_repo/product_repo.dart';
import 'package:fresh_cart/core/repos/products_repo/product_repo_impl.dart';
import 'package:fresh_cart/core/services/data_service.dart';
import 'package:fresh_cart/core/services/firebase_auth_service.dart';
import 'package:fresh_cart/core/services/firestore_service.dart';
import 'package:fresh_cart/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
        firebaseAuthService: getIt<FirebaseAuthService>(),
        databaseService: getIt<DatabaseService>()),
  ); //type of class //class itself

  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(
      getIt<DatabaseService>(),
    ),
  ); //type of class //class itself

  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImpl(
      getIt<DatabaseService>(),
    ),
  );
}
