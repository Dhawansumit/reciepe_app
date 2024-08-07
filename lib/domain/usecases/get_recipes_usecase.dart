import 'package:reciepe_app/domain/entities/recipe_entity.dart';
import 'package:reciepe_app/domain/repositories/recipe_repository_interface.dart';

class GetRecipesUseCase {
  final RecipeRepositoryInterface repository;

  GetRecipesUseCase(this.repository);

  Future<List<RecipeEntity>> call() async {
    return await repository.getRecipes();
  }
}
