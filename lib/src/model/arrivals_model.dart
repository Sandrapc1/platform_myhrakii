class NewArrivalModel {
  final String productId;
  final String title;
  final String quantity;
  final String description;
  final String price;
  final String thumbnailURI;

  NewArrivalModel({
    required this.productId,
    required this.title,
    required this.quantity,
    required this.description,
    required this.price,
    required this.thumbnailURI,
  });

  factory NewArrivalModel.fromJson(Map<String, dynamic> json) {
    return NewArrivalModel(
      productId: json['productId'].toString(),
      title: json['title'].toString(),
      quantity: json['quantity'].toString(),
      description: json['description'].toString(),
      price: json['price'].toString(),
      thumbnailURI: json['thumbnailURI'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'title': title,
      'quantity': quantity,
      'description': description,
      'price': price,
      'thumbnailURI': thumbnailURI,
    };
  }
}
