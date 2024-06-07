import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_am/features/common/bloc/products_list_bloc.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsListBloc, ProductsListState>(
      builder: (context, state) {
        state as ProductsListInitial;

        return Scaffold(
          backgroundColor: Colors.black,
          body: state.favoriteProducts.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 100.0,
                        width: 270.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: const Color.fromARGB(255, 39, 39, 39),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                alignment: Alignment.topRight,
                                height: 96.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          state.favoriteProducts[index].image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                    context.read<ProductsListBloc>().add(
                                        ProductsListRemoveFavoriteEvent(
                                            id: state
                                                .favoriteProducts[index].id));
                                  },
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    state.favoriteProducts[index].price,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    state.favoriteProducts[index].description,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: state.favoriteProducts.length,
                )
              : const Center(
                  child: Text(
                    'Nothing Added',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
        );
      },
    );
  }
}
