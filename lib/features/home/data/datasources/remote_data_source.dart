
import 'dart:convert';

import 'package:fashione_commerce/core/error/exception.dart';
import 'package:fashione_commerce/core/error/failure.dart';
import 'package:fashione_commerce/features/home/domain/entities/item_entity.dart';
import 'package:http/http.dart';

import '../models/item_model.dart';

abstract class RemoteDataSource{
  Future<List<ItemEntity>> getAllItemsFromApi();
  Future<List<ItemEntity>> searchedItemFromApi();
}

class RemoteDataSourceImpl implements RemoteDataSource{
  @override
  Future<List<ItemEntity>> getAllItemsFromApi() async{
    List<ItemEntity> data = [];
    Response response = await get(Uri.parse('https://fakestoreapi.com/products'));
    
    if(response.statusCode == 200){
      for(final val in jsonDecode(response.body)){
        data.add(ItemModel.fromJson(val));
      }
      return data;
    }else{
      throw ServerException();
    }
  }

  @override
  Future<List<ItemModel>> searchedItemFromApi() {
    throw UnimplementedError();
  }

}