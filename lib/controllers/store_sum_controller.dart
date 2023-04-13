import 'package:get/get.dart';

class StoreSumController extends GetxController {
  RxList _list = [].obs;
  RxList get list => _list;

  void setValue(int k) {
    _list.add(k);
    print(_list);
  }
}
