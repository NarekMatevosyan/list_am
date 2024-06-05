import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_am/features/common/models/product_box_view_model.dart';

part 'products_list_state.dart';
part 'products_list_event.dart';

class ProductsListBloc extends Bloc<ProductsListEvent, ProductsListState> {
  ProductsListBloc()
      : super(
          ProductsListInitial(
            products: [
              ProductBoxViewModel(
                id: 0,
                image: 'assets/images/bycycle.jpg',
                price: '75.000\$',
                description: 'hecaniv',
                isFavorite: false,
              ),
              ProductBoxViewModel(
                id: 1,
                image: 'assets/images/car.jpg',
                price: '75.000\$',
                description: 'meqena',
                isFavorite: false,
              ),
              ProductBoxViewModel(
                id: 2,
                image: 'assets/images/home.jpg',
                price: '75.000\$',
                description: 'tun',
                isFavorite: false,
              ),
              ProductBoxViewModel(
                id: 3,
                image: 'assets/images/mouse.jpg',
                price: '75.000\$',
                description: 'mknik',
                isFavorite: false,
              ),
              ProductBoxViewModel(
                id: 4,
                image: 'assets/images/phone.jpg',
                price: '75.000\$',
                description: 'heraxos',
                isFavorite: false,
              ),
            ],
          ),
        ) {
    on<ProductsListAddToFavoritesEvent>((event, emit) {});
  }
}
