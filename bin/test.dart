import 'dart:io';

void main() {
  int warm = 0; // t > 20
  int cool = 0; // 10 <= t <= 20
  int cold = 0; // t < 10

  for (int i = 1; i <= 7; i++) {
    stdout.write("Enter temperature for the day: ");
    int temperature = int.parse(stdin.readLineSync()!);

    if (temperature > 20) {
      print("It's warm today!");
      warm++;
    } else if (temperature >= 10 && temperature <= 20) {
      print("It's cool today.");
      cool++;
    } else {
      print("It's cold today!");
      cold++;
    }

    print("\nWarm days: $warm");
    print("Cool days: $cool");
    print("Cold days: $cold");
    print("Weekly temperature analysis completed.");
  }

  print("\nSummary for 7 days:");
  print("Warm days: $warm");
  print("Cool days: $cool");
  print("Cold days: $cold");
  print("Weekly temperature analysis completed.");
}
