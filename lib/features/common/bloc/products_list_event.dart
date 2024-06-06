part of 'products_list_bloc.dart';

abstract class ProductsListEvent {}

class ProductsListAddFavoriteEvent extends ProductsListEvent {
  final int id;

  ProductsListAddFavoriteEvent({required this.id});
}

class ProductsListRemoveFavoriteEvent extends ProductsListEvent {
  final int id;

  ProductsListRemoveFavoriteEvent({required this.id});
}
