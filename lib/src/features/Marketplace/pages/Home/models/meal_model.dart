class MealModel {
  final String price;
  final String image;
  final String mealName;
  final String mealSeller;
  final String sellerImage; // New field for the seller's image URL

  MealModel({
    required this.price,
    required this.image,
    required this.mealName,
    required this.mealSeller,
    required this.sellerImage,
  });
}

final meals = [
  MealModel(
    price: '100',
    image: 'https://example.com/image1.jpg',
    mealName: 'Meal 1',
    mealSeller: 'Seller 1',
    sellerImage: 'https://example.com/seller1.jpg', // Seller 1's image URL
  ),
  MealModel(
    price: '150',
    image: 'https://example.com/image2.jpg',
    mealName: 'Meal 2',
    mealSeller: 'Seller 2',
    sellerImage: 'https://example.com/seller2.jpg', // Seller 2's image URL
  ),
  // Add more MealModel instances as needed...
];
