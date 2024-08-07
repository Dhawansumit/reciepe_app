import 'package:flutter/material.dart';
import 'package:reciepe_app/domain/entities/recipe_entity.dart';
import 'package:reciepe_app/presentation/widgets/recipe_detail_bottom_sheet.dart';


class RecipeCard extends StatelessWidget {
  final RecipeEntity recipe;

  RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return RecipeDetailBottomSheet(recipe: recipe);
          },
        );
      },
      child: Card(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150, // Set a fixed height for the image
              child: Image.asset(
                "assets/dish.jpg",
                fit: BoxFit.cover, // Ensure the image covers the container without overflowing
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                recipe.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



