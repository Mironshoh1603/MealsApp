import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavouriteNotifier extends StateNotifier<List<Meal>> {
  FavouriteNotifier() : super([]);

  bool toogleMealFavouriteStatus(Meal meal) {
    final isFavouriteMeal = state.contains(meal);
    if (isFavouriteMeal) {
      state = state.where((elemant) => elemant.id != meal.id).toList();
      return true;
    } else {
      state = [...state, meal];
      return false;
    }
  }
}

final favouriteProvider =
    StateNotifierProvider<FavouriteNotifier, List<Meal>>((ref) {
  return FavouriteNotifier();
});
