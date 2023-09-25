

import 'package:dartz/dartz.dart';
import 'package:fashione_commerce/core/error/failure.dart';
import 'package:fashione_commerce/features/home/domain/entities/item_entity.dart';

import '../repositories/fashion_commerce_repository.dart';

class GetAllItemsUseCas{
  final FashionCommerceRepository repository;
  GetAllItemsUseCas({required this.repository});

  Future<Either<Failure,List<ItemEntity>>>excute() async{
    print(await repository.getItems());
    return await repository.getItems();
  }
}
