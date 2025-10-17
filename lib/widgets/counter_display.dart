import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int value;
  const CounterDisplay({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final isZero = value == 0;
    return  Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Center(
                  
                  child: Text('$value', 
                  style: TextStyle(
                  color: isZero
                  ? Colors.red
                  : Colors.white,
                  fontSize: 30, fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                );
  }
}