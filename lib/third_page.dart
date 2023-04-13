import 'package:flutter/material.dart';
import 'package:flutter_get_x_app/my_home_page.dart';
import 'package:get/get.dart';

import 'controllers/clicks_controller.dart';
import 'controllers/store_sum_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ClicksController clicks = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => MyHomePage());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ClicksController>(
              builder: (_) => Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Total sum of Y + X : " +
                        Get.find<ClicksController>().Z.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Y clicks : " + Get.find<ClicksController>().y.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: double.maxFinite,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.teal,
              ),
              child: Center(
                child: Text(
                  "X click count: " + Get.find<ClicksController>().x.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<ClicksController>().incrementY();
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green.shade300,
                ),
                child: Center(
                  child: Text(
                    "Increment Y",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<ClicksController>().sumXY();
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green.shade300,
                ),
                child: Center(
                  child: Text(
                    "Sum X + Y",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<StoreSumController>()
                    .setValue(Get.find<ClicksController>().Z);
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green.shade300,
                ),
                child: Center(
                  child: Text(
                    "Store sum",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
