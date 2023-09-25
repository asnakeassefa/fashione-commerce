import 'package:fashione_commerce/features/home/data/datasources/remote_data_source.dart';
import 'package:fashione_commerce/features/home/data/repositories/fashion_commerce_repository_impl.dart';
import 'package:fashione_commerce/features/home/domain/repositories/fashion_commerce_repository.dart';
import 'package:fashione_commerce/features/home/domain/usecases/get_all_items.dart';
import 'package:flutter/material.dart';

import 'features/welcome/welcome_screen.dart';
void main() {
  RemoteDataSource dataSource = RemoteDataSourceImpl();
  FashionCommerceRepository repository = FashionCommerceRepositoryImpl(dataSource: dataSource);
  GetAllItemsUseCas(repository:repository);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    RemoteDataSource dataSource = RemoteDataSourceImpl();
  FashionCommerceRepository repository = FashionCommerceRepositoryImpl(dataSource: dataSource);
  print('true');
  GetAllItemsUseCas(repository:repository).excute();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}