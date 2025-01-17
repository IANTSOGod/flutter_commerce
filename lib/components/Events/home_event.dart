import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SearchProducts extends HomeEvent {
  final String query;

  SearchProducts({required this.query});

  @override
  // TODO: implement props
  List<Object?> get props => [query];
}

class FilterProducts extends HomeEvent {
  final String category;

  FilterProducts({required this.category});

  @override
  // TODO: implement props
  List<Object?> get props => [category];
}

class AddToCart extends HomeEvent {
  final int productId;

  AddToCart({required this.productId});

  @override
  // TODO: implement props
  List<Object?> get props => [productId];
}