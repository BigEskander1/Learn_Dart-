import 'dart:async';

mixin Connectivity {
  Future<void> connectToWiFi() async {
    await Future.delayed(Duration(seconds: 1));
    print(" Connected successfully!");
  }
}

class SmartDevice with Connectivity {
  static const int maxDevices = 5;
  final String deviceName;
  late String statusMessage;
  static int deviceCount = 0;

  SmartDevice(this.deviceName) {
    if (deviceCount >= maxDevices) {
      throw Exception(" Cannot create more than $maxDevices devices.");
    }
    deviceCount++;
    connectToWiFi();
  }
}

void main() async {
  SmartDevice s1 = SmartDevice("wifi 1");
  SmartDevice s2 = SmartDevice("wifi 2");
  SmartDevice s3 = SmartDevice("wifi 3");
  SmartDevice s4 = SmartDevice("wifi 4");
  SmartDevice s5 = SmartDevice("wifi 5");
  SmartDevice s6 = SmartDevice("wifi 6");







  s1.deviceName;
  s2.deviceName;
  s3.deviceName;
  s4.deviceName;
  s5.deviceName;
  s6.deviceName;
}
