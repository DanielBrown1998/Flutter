void lacos(stop, {int? start, int? step}) {
  
  start ??= 0;
  step ??= 1;

  if (stop < start) {
    int? aux = start;
    start = stop;
    stop = aux;
  }

  while (start! < stop) {
    print(start);
    start += step;
  }

}

void main() {
  lacos(10, start: 5, step: 2);

  lacos(5, start: 10, step: 2);
}