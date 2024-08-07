import 'package:reciepe_app/data/models/recipe_model.dart';

class RecipeEntity {
  final String id;
  final String name;
  final String details;
  final List<String> ingredients;
  final double rating;
  final int likes;

  RecipeEntity({
    required this.id,
    required this.name,
    required this.details,
    required this.ingredients,
    required this.rating,
    required this.likes,
  });

  factory RecipeEntity.fromModel(RecipeModel model) {
    return RecipeEntity(
      id: model.id,
      name: model.name,
      details: model.details,
      ingredients: model.ingredients,
      rating: model.rating,
      likes: model.likes,
    );
  }
}
