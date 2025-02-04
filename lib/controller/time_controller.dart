import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TimeController extends GetxController {
  RxString istTime = "00:00".obs;
  RxString usTime = "00:00".obs;

  RxString selectedTimeZone = "ET".obs;

  Map<String, List<Object>> get timeZones => {
        "ET": ["Eastern Time (ET)", "-", 4, 0],
        "EDT": ["Eastern Daylight Time (EDT)", "-", 4, 30],
        "CT": ["Central Time (CT)", "-", 6, 0],
        "CDT": ["Central Daylight Time (CDT)", "-", 5, 30],
        "MT": ["Mountain Time (MT)", "-", 7, 0],
        "MDT": ["Mountain Daylight Time (MDT)", "-", 6, 30],
        "PT": ["Pacific Time (PT)", "-", 8, 0],
        "PDT": ["Pacific Daylight Time (PDT)", "-", 7, 30],
        "AKT": ["Alaska Time (AKT)", "-", 9, 0],
        "AKDT": ["Alaska Daylight Time (AKDT)", "-", 8, 30],
        "HST": ["Hawaii-Aleutian Standard Time (HST)", "+", 10, 0],
        "HDT": ["Hawaii-Aleutian Daylight Time (HDT)", "+", 9, 30],
        "AT": ["Atlantic Time (AT)", "-", 3, 0],
        "ADT": ["Atlantic Daylight Time (ADT)", "-", 2, 30],
      };

  init() {
    syncTime("IST", "ET");
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
