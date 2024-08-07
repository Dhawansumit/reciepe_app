import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/routes/app_routes.gr.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        ExploreRoute(),
        FavoriteRoute(),
        AccountRoute(),
      ],
      builder: (context, child, animation) {
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white, // Set the background color here
            currentIndex: context.tabsRouter.activeIndex,
            selectedItemColor: Colors.orange, // Set the selected icon color to orange
            unselectedItemColor: Colors.orange.withOpacity(0.3), // Set the unselected icon color to a lighter orange
            onTap: (index) {
              context.tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
