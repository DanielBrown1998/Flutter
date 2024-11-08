
class BotClock{

  Future clock(int time){
    return Future.delayed(Duration(seconds: time), () => print(''));
  }
}