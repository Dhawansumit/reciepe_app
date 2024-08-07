import 'package:get/get.dart';
import 'package:reciepe_app/domain/entities/recipe_entity.dart';
import 'package:reciepe_app/domain/usecases/get_recipes_usecase.dart';

class RecipeController extends GetxController {
  final GetRecipesUseCase getRecipesUseCase;
  var recipes = <RecipeEntity>[].obs;
  var isLoading = true.obs;

  RecipeController(this.getRecipesUseCase);

  @override
  void onInit() {
    super.onInit();
    fetchRecipes();
  }

  void fetchRecipes() async {
    isLoading(true);
    recipes.value = await getRecipesUseCase();
    isLoading(false);
  }

  void updateRating(String id, double newRating) async {
    var recipeIndex = recipes.indexWhere((recipe) => recipe.id == id);
    if (recipeIndex != -1) {
      var recipe = recipes[recipeIndex];
      var updatedRecipe = RecipeEntity(
        id: recipe.id,
        name: recipe.name,
        details: recipe.details,
        ingredients: recipe.ingredients,
        rating: newRating,
        likes: recipe.likes,
      );
      recipes[recipeIndex] = updatedRecipe;
      recipes.refresh(); // Notify observers of the change
      await getRecipesUseCase.repository.updateRecipe(updatedRecipe);
    }
  }

  void incrementLikes(String id) async {
    var recipeIndex = recipes.indexWhere((recipe) => recipe.id == id);
    if (recipeIndex != -1) {
      var recipe = recipes[recipeIndex];
      var updatedRecipe = RecipeEntity(
        id: recipe.id,
        name: recipe.name,
        details: recipe.details,
        ingredients: recipe.ingredients,
        rating: recipe.rating,
        likes: recipe.likes + 1,
      );
      recipes[recipeIndex] = updatedRecipe;
      recipes.refresh(); // Notify observers of the change
      await getRecipesUseCase.repository.updateRecipe(updatedRecipe);
    }
  }
}
