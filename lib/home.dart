import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ist_us_converter/controller/time_controller.dart';
import 'package:ist_us_converter/widgets/time_display.dart';

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
    timeController.syncTime("IST", "EST");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32.0,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Indian Time',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              CustomTimeDisplay(timeController: timeController, type: "ist"),
              Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Text(
                    "Asia/Kolkata",
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
                    timeController.syncTime(
                        "IST", timeController.selectedTimeZone.value);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.sync),
                ),
              ),
              Column(
                spacing: 8.0,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 100,
                    height: 1,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Obx(
                    () => Text(
                      timeController.timeDifference,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
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
              CustomTimeDisplay(timeController: timeController, type: "us"),
              Container(
                height: 50,
                width: context.width * 0.55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.white, width: 1)),
                child: Obx(
                  () => DropdownButton(
                    menuMaxHeight: context.height * 0.4,
                    dropdownColor: Color(0xFF121237),
                    iconEnabledColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    value: timeController.selectedTimeZone.value,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    isExpanded: true,
                    underline: Container(),
                    items: timeController.timeZones.entries
                        .map((e) => DropdownMenuItem(
                              value: e.key,
                              child: Text(
                                e.value.elementAt(0).toString(),
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      timeController.selectedTimeZone.value = value!;
                      timeController.syncTime("IST", value);
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
