import 'package:flutter/material.dart';
import 'package:flutter_get_x_app/controllers/clicks_controller.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
          children: [
            GetBuilder<ClicksController>(builder: (_) {
              return Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Total clicks sum : " + clicks.x.toString(),
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
                clicks.decrementX();
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
                    "Decrease X",
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
