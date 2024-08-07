import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reciepe_app/presentation/controllers/recipe_controller.dart';
import 'package:reciepe_app/presentation/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RecipeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text('Recipes')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          itemCount: controller.recipes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            final recipe = controller.recipes[index];
            return RecipeCard(recipe: recipe);
          },
        );
      }),
    );
  }
}
