import 'package:flutter/material.dart';
import 'package:flutter_get_x_app/controllers/clicks_controller.dart';
import 'package:flutter_get_x_app/first_page.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ClicksController click = Get.put(ClicksController());

    return Scaffold(
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
                  color: Colors.black38,
                ),
                child: Center(
                  child: Text(
                    "You have clicked ${click.x.toString()}",
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
                click.incrementX();
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.greenAccent,
                ),
                child: Center(
                  child: Text(
                    "Tap me",
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
                Get.to(
                  () => FirstPage(),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Go to first page",
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
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Go to Second Page",
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
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(15),
                width: double.maxFinite,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    "Hello there",
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
