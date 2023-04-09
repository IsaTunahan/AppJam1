import 'package:get/state_manager.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 1.obs;
  var textValue = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void increaseValue() {
    textValue.value++;
  }
}
