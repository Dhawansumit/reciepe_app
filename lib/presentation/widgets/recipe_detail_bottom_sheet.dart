import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reciepe_app/domain/entities/recipe_entity.dart';
import 'package:reciepe_app/presentation/controllers/recipe_controller.dart';

class RecipeDetailBottomSheet extends StatelessWidget {
  final RecipeEntity recipe;
  final RecipeController controller = Get.find();

  RecipeDetailBottomSheet({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://via.placeholder.com/150'), // Placeholder image
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recipe.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    Text(recipe.details, style: TextStyle(fontSize: 18)),
                    SizedBox(height: 16),
                    Text('Ingredients: ${recipe.ingredients.join(', ')}', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 16),
                    Obx(() {
                      final updatedRecipe = controller.recipes.firstWhere((r) => r.id == recipe.id);
                      return Row(
                        children: [
                          Text('Rating: ${updatedRecipe.rating}', style: TextStyle(fontSize: 16)),
                          IconButton(
                            icon: Icon(Icons.star),
                            onPressed: () {
                              _showRatingDialog(context, updatedRecipe);
                            },
                          ),
                        ],
                      );
                    }),
                    Obx(() {
                      final updatedRecipe = controller.recipes.firstWhere((r) => r.id == recipe.id);
                      return Row(
                        children: [
                          Text('Likes: ${updatedRecipe.likes}', style: TextStyle(fontSize: 16)),
                          IconButton(
                            icon: Icon(Icons.thumb_up),
                            onPressed: () {
                              controller.incrementLikes(recipe.id);
                            },
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showRatingDialog(BuildContext context, RecipeEntity recipe) {
    showDialog(
      context: context,
      builder: (context) {
        double newRating = recipe.rating;
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Rate this Recipe'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Please select a rating:'),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return IconButton(
                        icon: Icon(
                          index < newRating.round() ? Icons.star : Icons.star_border,
                        ),
                        onPressed: () {
                          setState(() {
                            newRating = (index + 1).toDouble();
                          });
                        },
                      );
                    }),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    controller.updateRating(recipe.id, newRating);
                    Navigator.of(context).pop();
                  },
                  child: Text('Submit'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
