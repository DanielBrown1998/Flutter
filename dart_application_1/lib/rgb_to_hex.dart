String rgb(int r, int g, int b) {
  String str = '';

  if (r >= 0 && r <= 255) {
    str += r.toRadixString(16).padLeft(2, '0').toUpperCase();
  } else if (r>255){
    str += 'FF';
  } else {
    str += '00';
  }
  if (g >= 0 && g <= 255) {
    str += g.toRadixString(16).padLeft(2, '0').toUpperCase();
  } else if (g>255){
    str += 'FF';
  } else {
    str += '00';
  }
  if (b >= 0 && b <= 255) {
    str += b.toRadixString(16).padLeft(2, '0').toUpperCase();
  } else if (b>255){
    str += 'FF';
  } else {
    str += '00';
  }
  return str;
}
