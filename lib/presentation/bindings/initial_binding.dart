import 'package:get/get.dart';
import 'package:reciepe_app/data/providers/recipe_provider.dart';
import 'package:reciepe_app/data/repositories/recipe_repository.dart';
import 'package:reciepe_app/domain/usecases/get_recipes_usecase.dart';
import 'package:reciepe_app/presentation/controllers/recipe_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecipeProvider());
    Get.lazyPut(() => RecipeRepository(Get.find<RecipeProvider>()));
    Get.lazyPut(() => GetRecipesUseCase(Get.find<RecipeRepository>()));
    Get.lazyPut(() => RecipeController(Get.find<GetRecipesUseCase>()));
  }
}
