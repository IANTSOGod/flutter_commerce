class Products {
  final int id;
  final String category;
  final String title;
  final String description;
  final double price;

  Products({
    required this.id,
    required this.category,
    required this.title,
    required this.description,
    required this.price,
  });

  // Méthode pour convertir un objet JSON en instance de Produit
  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      category: json['category'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
    );
  }

  // Méthode pour convertir une instance de Produit en objet JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'title': title,
      'description': description,
      'price': price,
    };
  }
}
