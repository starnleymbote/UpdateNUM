import 'package:get/get.dart';

class ClicksController extends GetxController {
  int _x = 0;
  int get x => _x;

  void incrementX() {
    _x++;
    update();
    print(_x);
  }

  void decrementX() {
    _x--;
    update();
    print(_x);
  }
}
