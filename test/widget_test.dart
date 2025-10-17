import 'package:flutter_test/flutter_test.dart';
import 'package:counter_plus_plus/controllers/counter_controller.dart';

void main() {
  test('increment increases value by 1', () {
    final counter = CounterController();
    counter.increment();
    expect(counter.counter, 1);
  });
}
