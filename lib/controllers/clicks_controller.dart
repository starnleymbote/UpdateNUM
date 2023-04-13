import 'package:get/get.dart';

class ClicksController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  int get y => _y.value;

  int _z = 0;
  int get Z => _z;

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

  void sumXY() {
    _z = _y.value + _x;
    print(_z);
    update();
  }

  void incrementY() {
    _y++;
  }

  void decrementY() {
    _y--;
  }
}
