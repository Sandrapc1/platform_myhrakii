class CategroyModel {
  final String categoryId;
  final String blobImageURL;
  final String categoryName;
  final String categoryWiseGst;

  CategroyModel({
    required this.categoryId,
    required this.blobImageURL,
    required this.categoryName,
    required this.categoryWiseGst,
  });

  factory CategroyModel.fromJson(Map<String, dynamic> json) {
    return CategroyModel(
      categoryId: json['categoryId'],
      blobImageURL: json['blobImageURL'],
      categoryName: json['categoryName'],
      categoryWiseGst: json['categoryWiseGst'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'blobImageURL': blobImageURL,
      'categoryName': categoryName,
      'categoryWiseGst': categoryWiseGst,
    };
  }
}