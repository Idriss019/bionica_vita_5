import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'cart_checkout_state.dart';

class CartCheckoutCubit extends Cubit<CartCheckoutState> {
  CartCheckoutCubit() : super(CartCheckoutInitial());
}
