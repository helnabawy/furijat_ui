import 'package:furijat_flutter/screens/bill_details/bill_details_screen.dart';
import 'package:furijat_flutter/screens/full_loading_view.dart';
import 'package:furijat_flutter/screens/home/home_screen.dart';
import 'package:furijat_flutter/screens/not_found_screen.dart';
import 'package:flutter/material.dart';

enum AppRoutes {
  initial,
  home,
  billDetails,
  notfound,
}

extension AppRoutesExtension on AppRoutes {
  String get route {
    switch (this) {
      case AppRoutes.initial:
        return '/';
      default:
        return '/' + name;
    }
  }

  Widget get widget {
    switch (this) {
      case AppRoutes.initial:
        return const HomeScreen();
      case AppRoutes.home:
        return const HomeScreen();
      case AppRoutes.billDetails:
        return const BillDetailsScreen();
      default:
        return const NotFoundScreen();
    }
  }
}
