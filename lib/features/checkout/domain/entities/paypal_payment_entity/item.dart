import 'package:fresh_cart/core/helper_function/get_currency.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_item_entity.dart';

class ItemEntity {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  ItemEntity({this.name, this.quantity, this.price, this.currency});

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };

  factory ItemEntity.fromEntity(CartItemEntity itemEntity) {
    return ItemEntity(
      name: itemEntity.productEntity.name,
      quantity: itemEntity.quanitty,
      price: itemEntity.productEntity.price.toString(),
      currency: getCurrency(),
    );
  }
}