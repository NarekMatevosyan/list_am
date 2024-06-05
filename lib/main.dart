import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_am/features/common/bloc/products_list_bloc.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProductsListBloc(),
        child: HomeScreen(
          bloc: BlocProvider.of(context),
        ),
      ),
    );
  }
}
