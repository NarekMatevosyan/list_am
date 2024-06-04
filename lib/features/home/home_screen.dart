import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 500.0,
            width: MediaQuery.of(context).size.width - 16 / 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 200.0,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/car.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border)),
                  ),
                ),
                const Spacer(),
                Text('67777'),
                const Spacer(),
                Text('zjanaidd99ee9e'),
              ],
            ),
          );
        },
        itemCount: 5,
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
