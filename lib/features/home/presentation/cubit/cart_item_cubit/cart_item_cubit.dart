import 'package:bloc/bloc.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_item_entity.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());

  void updateCartItem(CartItemEntity carItem) {
    emit(CartItemUpdated(carItem));
  }
}
