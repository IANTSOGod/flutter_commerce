import 'package:equatable/equatable.dart';
import 'package:flutter_commerce/components/Custom/Products.dart';

class HomeState extends Equatable {
  final bool isLoading;
  final List<Products> produits;
  final List<Products> produitCard;

  const HomeState(
      {this.isLoading = false,
      this.produits = const [],
      this.produitCard = const []});

  HomeState copyWith({
    bool? isLoading,
    List<Products>? produits,
    List<Products>? produitCard,
  }) {
    return HomeState(
        isLoading: isLoading ?? this.isLoading,
        produits: produits ?? this.produits,
        produitCard: produitCard ?? this.produitCard);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading,produits,produitCard];
}
