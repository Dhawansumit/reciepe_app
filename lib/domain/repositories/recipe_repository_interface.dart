import 'package:reciepe_app/domain/entities/recipe_entity.dart';

abstract class RecipeRepositoryInterface {
  Future<List<RecipeEntity>> getRecipes();
  Future<void> updateRecipe(RecipeEntity recipe);
}
