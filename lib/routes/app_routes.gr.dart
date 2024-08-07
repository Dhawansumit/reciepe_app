// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../presentation/pages/account_page.dart' as _i6;
import '../presentation/pages/explore_page.dart' as _i4;
import '../presentation/pages/favorite_page.dart' as _i5;
import '../presentation/pages/home_page.dart' as _i3;
import '../presentation/pages/main_page.dart' as _i2;
import '../presentation/pages/recipe_detail_page.dart' as _i7;
import '../presentation/pages/welcome_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.WelcomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.MainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomePage(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ExplorePage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.FavoritePage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.AccountPage(),
      );
    },
    RecipeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.RecipeDetailPage(recipeId: args.recipeId),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          WelcomeRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          MainRoute.name,
          path: '/main',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              ExploreRoute.name,
              path: 'explore',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              FavoriteRoute.name,
              path: 'favorite',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              RecipeDetailRoute.name,
              path: 'recipe/:id',
              parent: MainRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.WelcomePage]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: '/',
        );

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ExplorePage]
class ExploreRoute extends _i8.PageRouteInfo<void> {
  const ExploreRoute()
      : super(
          ExploreRoute.name,
          path: 'explore',
        );

  static const String name = 'ExploreRoute';
}

/// generated route for
/// [_i5.FavoritePage]
class FavoriteRoute extends _i8.PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: 'favorite',
        );

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i6.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i7.RecipeDetailPage]
class RecipeDetailRoute extends _i8.PageRouteInfo<RecipeDetailRouteArgs> {
  RecipeDetailRoute({required String recipeId})
      : super(
          RecipeDetailRoute.name,
          path: 'recipe/:id',
          args: RecipeDetailRouteArgs(recipeId: recipeId),
        );

  static const String name = 'RecipeDetailRoute';
}

class RecipeDetailRouteArgs {
  const RecipeDetailRouteArgs({required this.recipeId});

  final String recipeId;

  @override
  String toString() {
    return 'RecipeDetailRouteArgs{recipeId: $recipeId}';
  }
}
