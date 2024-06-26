part of 'products_list_bloc.dart';

abstract class ProductsListState {}

class ProductsListInitial extends ProductsListState {
  final List<ProductBoxViewModel> products;
  final List<ProductBoxViewModel> favoriteProducts;

  ProductsListInitial({required this.products, required this.favoriteProducts});
}
