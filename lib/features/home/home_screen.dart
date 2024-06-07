import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_am/features/common/bloc/products_list_bloc.dart';
import 'package:list_am/features/favorites/favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'LIST.AM',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        backgroundColor: Colors.black,
      ),
      body: BlocBuilder<ProductsListBloc, ProductsListState>(
        builder: (context, state) {
          state as ProductsListInitial;

          if (selectedIndex != 1) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 300.0,
                      width: 116.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: const Color.fromARGB(255, 41, 40, 40)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              alignment: Alignment.topRight,
                              height: 102.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          state.products[index].image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: state.products[index].isFavorite
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {});
                                        context.read<ProductsListBloc>().add(
                                            ProductsListRemoveFavoriteEvent(
                                                id: state.products[index].id));
                                      },
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: Colors.yellow,
                                      ))
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {});
                                        context.read<ProductsListBloc>().add(
                                            ProductsListAddFavoriteEvent(
                                                id: state.products[index].id));
                                      },
                                      icon: const Icon(Icons.favorite_border),
                                    ),
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              state.products[index].price,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              state.products[index].description,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 5,
              ),
            );
          } else {
            return const FavoritesScreen();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            activeIcon: Icon(
              Icons.widgets,
              color: Colors.blue,
            ),
            icon: Icon(
              Icons.widgets,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.blue,
            ),
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.add_circle_rounded,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.message_rounded,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
