part of 'products_list_bloc.dart';

abstract class ProductsListState {}

class ProductsListInitial extends ProductsListState {
  final List<ProductBoxViewModel> products;

  ProductsListInitial({required this.products});
}
