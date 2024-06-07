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
                price: '100\$',
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
                price: '110.000\$',
                description: 'tun',
                isFavorite: false,
              ),
              ProductBoxViewModel(
                id: 3,
                image: 'assets/images/mouse.jpg',
                price: '10\$',
                description: 'mknik',
                isFavorite: false,
              ),
              ProductBoxViewModel(
                id: 4,
                image: 'assets/images/phone.jpg',
                price: '750\$',
                description: 'heraxos',
                isFavorite: false,
              ),
            ],
            favoriteProducts: [],
          ),
        ) {
    final currentState = state as ProductsListInitial;

    on<ProductsListAddFavoriteEvent>((event, emit) {
      if (currentState.favoriteProducts.isEmpty) {
        currentState.favoriteProducts.add(currentState.products[event.id]);
        currentState.products[event.id].isFavorite = true;
      } else {
        if (!currentState.products[event.id].isFavorite) {
          currentState.favoriteProducts.add(currentState.products[event.id]);
          currentState.products[event.id].isFavorite = true;
        }
      }

      emit(currentState);
    });
    on<ProductsListRemoveFavoriteEvent>((event, emit) {
      for (var i = 0; i < currentState.favoriteProducts.length; i++) {
        if (currentState.favoriteProducts[i].id == event.id) {
          currentState.favoriteProducts.removeAt(i);
          currentState.products[event.id].isFavorite = false;
          emit(currentState);
        }
      }
    });
  }
}
