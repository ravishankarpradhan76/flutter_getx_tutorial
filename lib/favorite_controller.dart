
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String>fruitList = [
    'Orange',
    'Apple',
    'Guave',
    'Pineapple',
    'Mango',
    'Banana',
    'Coconut',
    'Grapes',
    'pomegranate',
    'Papaya'
  ].obs;
  RxList tempFruitList = [].obs;

  addToFavorite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavorite(String value) {
    tempFruitList.remove(value);
  }
}