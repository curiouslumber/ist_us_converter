import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ist_us_converter/controller/time_controller.dart';

class CustomTimeDisplay extends StatelessWidget {
  const CustomTimeDisplay({
    super.key,
    required this.timeController,
    required this.type,
  });

  final TimeController timeController;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              (type == "ist"
                  ? timeController.istTime.value.substring(0, 1)
                  : timeController.usTime.value.substring(0, 1)),
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
              (type == "ist"
                  ? timeController.istTime.value.substring(1, 2)
                  : timeController.usTime.value.substring(1, 2)),
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
            (type == "ist"
                ? timeController.istTime.value.substring(3, 4)
                : timeController.usTime.value.substring(3, 4)),
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
              (type == "ist"
                  ? timeController.istTime.value.substring(4, 5)
                  : timeController.usTime.value.substring(4, 5)),
              style: TextStyle(color: Colors.white, fontSize: 64.0),
            ),
          ),
        ),
      ],
    );
  }
}
