import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TimeController extends GetxController {
  RxString istTime = "00:00".obs;
  RxString usTime = "00:00".obs;

  RxString selectedTimeZone = "EST".obs;

  Map<String, List<Object>> get timeZones => {
        "EST": ["Eastern Standard Time (EST)", "-", 5, 0],
        "EDT": ["Eastern Daylight Time (EDT)", "-", 4, 0],
        "CST": ["Central Standard Time (CST)", "-", 6, 0],
        "CDT": ["Central Daylight Time (CDT)", "-", 5, 0],
        "MST": ["Mountain Standard Time (MST)", "-", 7, 0],
        "MDT": ["Mountain Daylight Time (MDT)", "-", 6, 0],
        "PST": ["Pacific Standard Time (PST)", "-", 8, 0],
        "PDT": ["Pacific Daylight Time (PDT)", "-", 7, 0],
        "AKST": ["Alaska Standard Time (AKST)", "-", 9, 0],
        "AKDT": ["Alaska Daylight Time (AKDT)", "-", 8, 0],
        "HST": ["Hawaii Standard Time (HST)", "-", 10, 0],
        "AST": ["Atlantic Standard Time (AST)", "-", 4, 0],
        "ADT": ["Atlantic Daylight Time (ADT)", "-", 3, 0],
      };

  init() {
    syncTime("IST", "EST");
  }

  void syncTime(String sourceTime, String destTime) {
    // Get UTC Time
    final utcTimeRaw = DateTime.now().toUtc();

    // Get IST Time
    final istTimeRaw = utcTimeRaw.add(Duration(hours: 5, minutes: 30));

    istTime.value = istTimeRaw.toIso8601String().substring(11, 16);

    // Get dest time
    final destTimeRawList = timeZones[destTime];

    DateTime destTimeRaw = utcTimeRaw;
    if (destTimeRawList != null) {
      if (destTimeRawList[1] == "+") {
        destTimeRaw = utcTimeRaw.add(Duration(
            hours: int.parse(destTimeRawList[2].toString()),
            minutes: int.parse(destTimeRawList[3].toString())));
      } else if (destTimeRawList[1] == "-") {
        destTimeRaw = utcTimeRaw.subtract(Duration(
            hours: int.parse(destTimeRawList[2].toString()),
            minutes: int.parse(destTimeRawList[3].toString())));
      }
    }

    usTime.value = destTimeRaw.toIso8601String().substring(11, 16);
  }

  String get timeDifference {
    try {
      DateFormat format = DateFormat("HH:mm");

      DateTime istDateTime = format.parse(istTime.value);
      DateTime usDateTime = format.parse(usTime.value);

      Duration difference = istDateTime.difference(usDateTime);

      return "${difference > Duration.zero ? "+" : "-"}${difference.inHours.abs().toString().padLeft(2, '0')}:${(difference.inMinutes.abs() % 60).toString().padLeft(2, '0')}";
    } catch (e) {
      return "Invalid Time";
    }
  }
}
