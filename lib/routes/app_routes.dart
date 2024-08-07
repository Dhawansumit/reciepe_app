import 'package:auto_route/auto_route.dart';
import 'package:reciepe_app/presentation/pages/home_page.dart';
import 'package:reciepe_app/presentation/pages/explore_page.dart';
import 'package:reciepe_app/presentation/pages/favorite_page.dart';
import 'package:reciepe_app/presentation/pages/account_page.dart';
import 'package:reciepe_app/presentation/pages/main_page.dart';
import 'package:reciepe_app/presentation/pages/recipe_detail_page.dart';
import 'package:reciepe_app/presentation/pages/welcome_page.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, initial: true),
    AutoRoute(
      path: '/main',
      page: MainPage,
      children: [
        AutoRoute(path: 'home', page: HomePage),
        AutoRoute(path: 'explore', page: ExplorePage),
        AutoRoute(path: 'favorite', page: FavoritePage),
        AutoRoute(path: 'account', page: AccountPage),
        AutoRoute(path: 'recipe/:id', page: RecipeDetailPage),
      ],
    ),
  ],
)
class $AppRouter {}
