import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/helper_function/get_user.dart';
import 'package:fresh_cart/core/repos/orders_repo/orders_repo.dart';
import 'package:fresh_cart/core/services/get_it_service.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/checkout/domain/entities/order_entity.dart';
import 'package:fresh_cart/features/checkout/presentation/cubit/add_order_cubit.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/add_oredr_cubit_bloc_builder.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const routeName = 'checkout';

  final CartEntity cartEntity;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  late OrderInputEntity orderInputEntity;

  @override
  void initState() {
    orderInputEntity = OrderInputEntity(widget.cartEntity, uID: getUser().uId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(getIt.get<OrdersRepo>()),
      child: Scaffold(
        appBar: const CustomAppBar(title: 'الشحن'),
        body: Provider.value(
          value: orderInputEntity,
          child: const AddOredrCubitBlocBuilder(child: CheckoutViewBody()),
        ),
      ),
    );
  }
}
