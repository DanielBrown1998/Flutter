int factorial(int i) {
  if (i == 0) {
    return 1;
  }
  return i * factorial(i - 1);
}

String dec2FactString(int nb) {
  String fact = "";
  int i = 1;
  while (nb > 0) {
    fact = (nb % i).toString() + fact;
    nb = nb ~/ i;
    i++;
  }
  return fact;
}

int factString2Dec(String str) {
  int num = 0;
  for (int i = 0; i < str.length; i++) {
    num += int.parse(str[i]) * factorial(str.length - 1 - i);
  }
  return num;
}

void main() {
  print(dec2FactString(463));
  print(factString2Dec('341010'));
}
