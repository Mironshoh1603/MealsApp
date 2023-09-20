import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/datas/dummy_data.dart';

final MealProvider = Provider((ref) {
  return dummyMeals;
});
