class CraftTaleModel {
  final String factId;
  final String factName1;
  final String factName2;
  final String factDescription;
  final String startDateTime;
  final String imageNameWithExtension1;
  final String imageUrl1;
  final String imageNameWithExtension2;
  final String imageUrl2;
  final String status;
  final String category;
  final String blogName;
  final String blogArticle;

  CraftTaleModel({
    required this.factId,
    required this.factName1,
    required this.factName2,
    required this.factDescription,
    required this.startDateTime,
    required this.imageNameWithExtension1,
    required this.imageUrl1,
    required this.imageNameWithExtension2,
    required this.imageUrl2,
    required this.status,
    required this.category,
    required this.blogName,
    required this.blogArticle,
  });

  factory CraftTaleModel.fromJson(Map<String, dynamic> json) {
    return CraftTaleModel(
      factId: json['factId'].toString(),
      factName1: json['factName1'].toString(),
      factName2: json['factName2'].toString(),
      factDescription: json['factDescription'].toString(),
      startDateTime: json['startDateTime'].toString(),
      imageNameWithExtension1: json['imageNameWithExtension1'].toString(),
      imageUrl1: json['imageUrl1'].toString(),
      imageNameWithExtension2: json['imageNameWithExtension2'].toString(),
      imageUrl2: json['imageUrl2'].toString(),
      status: json['status'].toString(),
      category: json['category'].toString(),
      blogName: json['blogName'].toString(),
      blogArticle: json['blogArticle'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'factId': factId,
      'factName1': factName1,
      'factName2': factName2,
      'factDescription': factDescription,
      'startDateTime': startDateTime,
      'imageNameWithExtension1': imageNameWithExtension1,
      'imageUrl1': imageUrl1,
      'imageNameWithExtension2': imageNameWithExtension2,
      'imageUrl2': imageUrl2,
      'status': status,
      'category': category,
      'blogName': blogName,
      'blogArticle': blogArticle,
    };
  }
}
