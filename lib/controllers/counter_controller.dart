
class CounterController {
  int counter = 0;

  void increment (){
    counter ++;
  }

  bool decrement () {
    if (counter>0){
    counter --;
    return true;
    }
    return false;
  }

  void reset (){
    counter=0;
  }
  }