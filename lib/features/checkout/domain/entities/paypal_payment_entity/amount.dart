import 'package:fresh_cart/core/helper_function/get_currency.dart';
import 'package:fresh_cart/features/checkout/domain/entities/order_entity.dart';
import 'package:fresh_cart/features/checkout/domain/entities/paypal_payment_entity/details.dart';

class Amount {
  String? total;
  String? currency;
  DetailsEntity? details;

  Amount({this.total, this.currency, this.details});

  factory Amount.fromEntity(OrderInputEntity entity) {
    return Amount(
      total: entity.calculateTotalPriceAfterDiscountAndShipping().toString(),
      currency: getCurrency(),
      details: DetailsEntity.fromEntity(entity),
    );
  }

  toJson() => {
        'total': total,
        'currency': currency,
        'details': details!.toJson(),
      };
}
