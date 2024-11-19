
class BotClock{

  Future clock(int time){
    return Future.delayed(Duration(seconds: time), () => print(''));
  }

  Stream botStream(int interva, [int? maxCount]) async* {
    int count = 0;
    while (maxCount == null || count < maxCount) {
      await Future.delayed(Duration(seconds: interva));
      yield count++;
    }
  }



}