import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable{
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ItemEntity({
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
  
  @override
  List<Object?> get props => [title,price,description,category,image,rating];
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }
}