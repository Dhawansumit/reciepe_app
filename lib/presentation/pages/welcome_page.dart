import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:reciepe_app/routes/app_routes.gr.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/welcome_image.png'), // Add your welcome image
            SizedBox(height: 20),
            Text(
              "It's Cooking Time!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Your private coach in your lovely kitchen.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.router.push(MainRoute(children: [HomeRoute()]));
              },
              child: Text('Explore the Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
