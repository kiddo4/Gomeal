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
    image: 'https://www.chicken-republic.com/wp-content/uploads/2021/10/CITIZENS-SPICY-YAM-MEAL-DARK.jpg',
    mealName: 'chicken and chips',
    mealSeller: 'Chicken republic',
    sellerImage: 'https://example.com/seller1.jpg', // Seller 1's image URL
  ),
  MealModel(
    price: '150',
    image: 'https://www.chicken-republic.com/wp-content/uploads/2021/09/ChickenRepublic_QuarterRotisserie.jpg',
    mealName: 'Chicken',
    mealSeller: 'Chicken Republic',
    sellerImage: 'https://example.com/seller2.jpg', // Seller 2's image URL
  ),
  MealModel(
    price: '25000',
    image: 'https://www.chicken-republic.com/wp-content/uploads/2021/09/ChickenRepublic_RefuelDodoMaxMeal.jpg',
    mealName: 'Rice and dodo',
    mealSeller: 'Chicken repblic',
    sellerImage: 'https://example.com/seller2.jpg', // Seller 2's image URL
  ),
  MealModel(
    price: '150',
    image: 'https://www.chicken-republic.com/wp-content/uploads/2021/10/CITIZENS-SPICY-YAM-MEAL-DARK.jpg',
    mealName: 'Meal 2',
    mealSeller: 'Chicken republic',
    sellerImage: 'https://example.com/seller2.jpg', // Seller 2's image URL
  ),
  // Add more MealModel instances as needed...
];
