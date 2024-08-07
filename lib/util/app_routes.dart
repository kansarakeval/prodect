import 'package:flutter/material.dart';
import 'package:prodect/screen/detail/view/detail_screen.dart';
import 'package:prodect/screen/home/view/home_screen.dart';

import '../screen/like/view/like_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  '/': (context) => const HomeScreen(),
  'detail': (context) => DetailScreen(),
  'like': (context) => const LikeScreen(),
};