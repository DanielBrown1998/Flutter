import "dart:math" as math;

String getGrade(int a, int b, int c) {
  double average = (a + b + c) / 3;
  if (average >= 90) {
    return 'A';
  } else if (average >= 80) {
    return 'B';
  } else if (average >= 70) {
    return 'C';
  } else if (average >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

bool setAlarm(bool employed, bool vacation) {
  if (!employed || vacation) {
    return false;
  } else {
    return true;
  }
}

int binToDec(String bin) {
  int num = bin.length;
  double dec = 0;
  for (int i = 0; i < num; i++) {
    if (bin[i] == '1') {
      dec += math.pow(2, num - 1 - i);
    }
  }
  return dec.toInt();
}

List<bool> flickSwitch(List<String> arguments) {
  List<bool> result = [];
  bool light = true;
  for (int i = 0; i < arguments.length; i++) {
    if (arguments[i] == 'flick') {
      light = !light;
    }
    result.add(light);
  }
  return result;
}
