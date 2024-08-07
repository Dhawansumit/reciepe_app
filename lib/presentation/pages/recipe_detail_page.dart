import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reciepe_app/presentation/controllers/recipe_controller.dart';
import 'package:reciepe_app/domain/entities/recipe_entity.dart';

class RecipeDetailPage extends StatelessWidget {
  final String recipeId;

  RecipeDetailPage({required this.recipeId});

  @override
  Widget build(BuildContext context) {
    final RecipeController controller = Get.find();
    final RecipeEntity recipe = controller.recipes.firstWhere((recipe) => recipe.id == recipeId);

    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/150'), // Placeholder image
            SizedBox(height: 16),
            Text(recipe.details, style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Ingredients: ${recipe.ingredients.join(', ')}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Rating: ${recipe.rating}', style: TextStyle(fontSize: 16)),
                IconButton(
                  icon: Icon(Icons.star),
                  onPressed: () {
                    // Implement rating functionality
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text('Likes: ${recipe.likes}', style: TextStyle(fontSize: 16)),
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {
                    // Implement like functionality
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
