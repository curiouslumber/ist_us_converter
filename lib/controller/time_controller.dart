import 'package:get/get.dart';

class TimeController extends GetxController {
  RxString istTime = "00:00".obs;
  RxString usTime = "00:00".obs;

  static var timeZones = {
    "IST": ["Asia/Kolkata", "+", 5, 30],
    "ET": ["America/New_York", "-", 4, 0],
  };

  init() {
    syncTime();
  }

  void syncTime() {
    // Get UTC Time
    final utcTimeRaw = DateTime.now().toUtc();

    // Get IST Time by adding 5 hours 30 minutes
    final istTimeRaw =
        utcTimeRaw.add(const Duration(hours: 5, minutes: 30)).toIso8601String();
    istTime.value = istTimeRaw.substring(11, 16);

    // Get US Time by adding 4 hours
    final usTimeRaw =
        utcTimeRaw.subtract(const Duration(hours: 5)).toIso8601String();
    usTime.value = usTimeRaw.substring(11, 16);
  }
}
