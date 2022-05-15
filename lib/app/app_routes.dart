import 'package:furijat_flutter/models/screens_arguments.dart';
import 'package:furijat_flutter/screens/not_found_screen.dart';
import 'package:furijat_flutter/types/routes_types.dart';
import 'package:flutter/material.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;
    final args = settings.arguments;

    final route =
        AppRoutes.values.firstWhere((element) => element.route == routeName, orElse: () => AppRoutes.notfound);

    return MaterialPageRoute(
        builder: (_) => route.widget,
        settings: settings,
        fullscreenDialog: args is FullScreenArguments && args.isFullScreen);
  }

  static List<Route> generateInitialRoutes(String name) {
    return <Route>[MaterialPageRoute(builder: (_) => AppRoutes.initial.widget)];
  }
}

class ScaleRouteTransition<T> extends MaterialPageRoute<T> {
  ScaleRouteTransition({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return ScaleTransition(scale: animation, child: child);
  }
}
