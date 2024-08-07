// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => RecipeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      details: json['details'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rating: (json['rating'] as num).toDouble(),
      likes: (json['likes'] as num).toInt(),
    );

Map<String, dynamic> _$RecipeModelToJson(RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
      'ingredients': instance.ingredients,
      'rating': instance.rating,
      'likes': instance.likes,
    };
