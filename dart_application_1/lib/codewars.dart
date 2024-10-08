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

List<int> maps(List<int> arr) {
  return arr.map((e) => e * 2).toList();
}

String highAndLow(String numbers) {
  int max = -999999999999;
  int min = 999999999999;

  for (var item in numbers.split(' ')) {
    int newItem = int.parse(item);
    if (newItem >= max) {
      max = newItem;
    }
    if (newItem <= min) {
      min = newItem;
    }
  }
  return '$max $min';
}

List<String> lista = [
  "1 2 3 4 5",
  "1 2 -3 4 5",
  "1 9 3 4 -5",
];

List<String> highAndLowList(List<String> numbers) {
  List<String> result = [];
  for (var item in numbers) {
    result.add(highAndLow(item));
  }
  return result;
}

int wordsToMarks(String s) {
  Map<String, int> numsPos = {
    'a': 1,
    'b': 2,
    'c': 3,
    'd': 4,
    'e': 5,
    'f': 6,
    'g': 7,
    'h': 8,
    'i': 9,
    'j': 10,
    'k': 11,
    'l': 12,
    'm': 13,
    'n': 14,
    'o': 15,
    'p': 16,
    'q': 17,
    'r': 18,
    's': 19,
    't': 20,
    'u': 21,
    'v': 22,
    'w': 23,
    'x': 24,
    'y': 25,
    'z': 26,
  };
  int num = 0;
  for (var item in s.split('')) {
    num += numsPos[item]!;
  }
  return num;
}

void main() {}
