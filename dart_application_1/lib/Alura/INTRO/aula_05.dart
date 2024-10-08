void main() {
  List<String> myName = [
    "Daniel",
    "Brown",
    "Rodrigues",
    "Mingozzi",
    "dos",
    "Passos"
  ];
  String firstLastName = '';
  int i = 1;
  print(myName.sublist(0, 2)); //[Daniel, Passos]
  for (dynamic element in myName) {
    if (element.contains('a')) {
      if (i == myName.length){
        firstLastName += element;
      }
      else{
        firstLastName += '$element ';
      }
    }
    i++;
  }
  print(firstLastName.trimRight()); //Daniel Passos
  print(firstLastName.split(' ')); //[Daniel, Passos]

  print(myName.where((String element) => element.contains('a')).toList()); //[Daniel, Passos]
  print(myName.any((String element) => element.contains('a'))); //true
  print(myName.every((String element) => element.contains('a'))); //false

  print(myName.map((String element) => element.length).toList()); //[6, 5, 9, 8, 3, 6]
  print(myName.expand((String element) => element.split('')).toList()); //[D, a, n, i, e, l, B, r, o, w, n, R, o, d, r, i, g, u, e, s, M, i, n, g, o, z, z, i, d, o, s, P, a, s, s, o, s]
  String myNewName = myName.reduce((String value, String element) => '$value $element');
  print(myNewName); //Daniel Brown Rodrigues Mingozzi dos Passos
  
}
