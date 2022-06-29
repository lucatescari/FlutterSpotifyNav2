import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/main.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch.dart';
import 'package:flutterspotifynav2/screens/recipe/recipe.dart';

class NavigationService {
  static final NavigationService _singleton = NavigationService._internal();

  factory NavigationService() {
    return _singleton;
  }

  NavigationService._internal();

  final _currentTabStream = StreamController<int>.broadcast();

  StreamController<int> getCurrentTabIdStream() {
    return _currentTabStream;
  }

  void setCurrentTabIdStream(int value) {
    _currentTabStream.add(value);
  }

  final _recipePagesStream = StreamController<List<MaterialPage>>();

  StreamController<List<MaterialPage>> getRecipePagesStream() {
    return _recipePagesStream;
  }

  void addRecipeNavPage(List<MaterialPage> value) {
    _recipePagesStream.add(value);
  }

  void navigateToRecipeScreen(BuildContext ctx, Widget screen) {
    recipeNavigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (ctx) => screen));
  }

  void goBackRecipe(BuildContext ctx) {
    recipeNavigatorKey.currentState?.pop();
  }

  void navigateToKochbuchScreen(BuildContext ctx, Widget screen) {
    kochbuchNavigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (ctx) => screen));
  }

  void goBackKochbuch(BuildContext ctx) {
    kochbuchNavigatorKey.currentState?.pop();
  }

  void navigateToAppScreen(BuildContext ctx, Widget screen) {
    appNavigatorKey.currentState
        ?.pushReplacement(MaterialPageRoute(builder: (ctx) => screen));
  }

  void goBackApp(BuildContext ctx) {
    appNavigatorKey.currentState?.pop();
  }
}
