import 'package:flutter/material.dart';
import 'package:flutter_get_x_app/controllers/clicks_controller.dart';
import 'package:flutter_get_x_app/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ClicksController clicks = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
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
            GetBuilder<ClicksController>(builder: (_) {
              return Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Total clicks : " + clicks.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                Get.to(() => ThirdPage());
                //clicks.decrementX();
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red.shade200,
                ),
                child: Center(
                  child: Text(
                    "Go to Third Page",
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
