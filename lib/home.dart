import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ist_us_converter/controller/time_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeController timeController = Get.put(TimeController());

  @override
  void initState() {
    super.initState();
    timeController.syncTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 64.0,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32.0,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Indian Time (IST)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.istTime.value.substring(0, 1),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.istTime.value.substring(1, 2),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 16.0,
                    child: Text(
                      ":",
                      style: TextStyle(color: Colors.white, fontSize: 64.0),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Text(
                      timeController.istTime.value.substring(3, 4),
                      style: TextStyle(color: Colors.white, fontSize: 64.0),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.istTime.value.substring(4, 5),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Text(
                    'Asia/Kolkata',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 1,
                decoration: BoxDecoration(color: Colors.white),
              ),
              SizedBox(
                height: 80,
                width: 80,
                child: FloatingActionButton(
                  onPressed: () {
                    timeController.syncTime();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.sync),
                ),
              ),
              Container(
                width: 100,
                height: 1,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32.0,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'US Time',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.usTime.value.substring(0, 1),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.usTime.value.substring(1, 2),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 16.0,
                    child: Text(
                      ":",
                      style: TextStyle(color: Colors.white, fontSize: 64.0),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.usTime.value.substring(3, 4),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Obx(
                      () => Text(
                        timeController.usTime.value.substring(4, 5),
                        style: TextStyle(color: Colors.white, fontSize: 64.0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Text(
                    'Eastern Time (ET)',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
