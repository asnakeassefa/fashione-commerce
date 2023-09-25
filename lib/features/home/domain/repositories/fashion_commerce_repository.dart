import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/item_entity.dart';

abstract class FashionCommerceRepository{
  Future<Either<Failure,List<ItemEntity>>> getItems();
  Future<Either<Failure,List<ItemEntity>>> searchItem(String searchParam);
}