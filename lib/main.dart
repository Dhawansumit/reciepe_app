import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reciepe_app/presentation/bindings/initial_binding.dart';
import 'package:reciepe_app/routes/app_routes.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      initialBinding: InitialBinding(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
