import 'package:bloc/bloc.dart';
import 'package:fresh_cart/core/entities/product_entity.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_entity.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity([]);
  void addProduct(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExis(productEntity);
    var carItem = cartEntity.getCarItem(productEntity);
    if (isProductExist) {
      carItem.increasQuantity();
    } else {
      cartEntity.addCartItem(carItem);
    }
    emit(CartItemAdded());
  }

  void deleteCarItem(CartItemEntity carItem) {
    cartEntity.removeCarItem(carItem);
    emit(CartItemRemoved());
  }
}
