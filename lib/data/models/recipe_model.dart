import 'package:json_annotation/json_annotation.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class RecipeModel {
  final String id;
  final String name;
  final String details;
  final List<String> ingredients;
  final double rating;
  final int likes;

  RecipeModel({
    required this.id,
    required this.name,
    required this.details,
    required this.ingredients,
    required this.rating,
    required this.likes,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeModelToJson(this);
}
