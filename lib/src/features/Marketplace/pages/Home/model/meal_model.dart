class MealModel {
  final String price;
  final String image;
  final String mealName;
  final String mealSeller;

  MealModel({
    required this.price,
    required this.image,
    required this.mealName,
    required this.mealSeller,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      price: json['price'],
      image: json['image'],
      mealName: json['mealName'],
      mealSeller: json['mealSeller'],
    );
  }

  static List<MealModel> dummyData = [
    MealModel(
      price: '100',
      image: 'https://example.com/image1.jpg',
      mealName: 'Meal 1',
      mealSeller: 'Seller 1',
    ),
    MealModel(
      price: '150',
      image: 'https://example.com/image2.jpg',
      mealName: 'Meal 2',
      mealSeller: 'Seller 2',
    ),
    MealModel(
      price: '200',
      image: 'https://example.com/image3.jpg',
      mealName: 'Meal 3',
      mealSeller: 'Seller 3',
    ),
  ];
}
