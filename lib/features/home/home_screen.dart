import 'package:flutter/material.dart';
import 'package:list_am/features/common/bloc/products_list_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.bloc});

  final ProductsListBloc bloc;

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'LIST.AM',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            if (true) {
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
                              image: const DecorationImage(
                                  image: AssetImage(''), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border)),
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          '',
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
                          '',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return null;
          },
          itemCount: 5,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
