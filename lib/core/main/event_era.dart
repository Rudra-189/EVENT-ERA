import 'package:eventera/core/routes/app_routes.dart';
import 'package:eventera/core/utils/app_exports.dart' show ScreenUtilInit;
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes,
        navigatorKey: NavigatorService.navigatorKey,
      ),
    );
  }
}
