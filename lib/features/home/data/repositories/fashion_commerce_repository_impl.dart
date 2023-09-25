
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/item_entity.dart';
import '../../domain/repositories/fashion_commerce_repository.dart';
import '../datasources/remote_data_source.dart';

class FashionCommerceRepositoryImpl implements FashionCommerceRepository{
  RemoteDataSource dataSource;
  FashionCommerceRepositoryImpl({
    required this.dataSource,
  });

  //it gets Items from the data source
  @override
  Future<Either<Failure, List<ItemEntity>>> getItems() async{
    try{
      final List<ItemEntity> data = await dataSource.getAllItemsFromApi();
      print('in repository');
      return Right(data);
    } catch(e){
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ItemEntity>>> searchItem(String searchParam) async{
    try{
      return Right(<ItemEntity>[]);
    } catch(e){
      return Left(ServerFailure());
    }
  }

}
