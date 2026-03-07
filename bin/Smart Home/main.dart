import 'device.dart';
import 'smart_lamp.dart';
import 'smart_speaker.dart';
import 'smart_thermostat.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

void main() {

  List<Device> devices = [
    SmartLamp('Living Room Lamp'),
    SmartSpeaker('Kitchen Speaker'),
    SmartThermostat('Hall Thermostat', 22),
  ];

  for (var device in devices) {

    device.showInfo();

    device.turnOn();

    if (device is Adjustable) {
      (device as Adjustable).increase();
    }

    if (device is BatteryPowered) {
      (device as BatteryPowered).showBattery();
    }

    print('-------------');
  }

  print('All devices processed.');
}