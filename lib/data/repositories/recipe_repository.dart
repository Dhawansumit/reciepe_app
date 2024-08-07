import 'package:reciepe_app/data/providers/recipe_provider.dart';
import 'package:reciepe_app/domain/entities/recipe_entity.dart';
import 'package:reciepe_app/domain/repositories/recipe_repository_interface.dart';

import '../models/recipe_model.dart';

class RecipeRepository implements RecipeRepositoryInterface {
  final RecipeProvider provider;

  RecipeRepository(this.provider);

  @override
  Future<List<RecipeEntity>> getRecipes() async {
    final models = await provider.fetchRecipes();
    return models.map((model) => RecipeEntity.fromModel(model)).toList();
  }

  @override
  Future<void> updateRecipe(RecipeEntity recipe) async {
    final model = RecipeModel(
      id: recipe.id,
      name: recipe.name,
      details: recipe.details,
      ingredients: recipe.ingredients,
      rating: recipe.rating,
      likes: recipe.likes,
    );
    await provider.updateRecipe(model);
  }
}
