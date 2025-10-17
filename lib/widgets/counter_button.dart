
import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final String? tooltip;
  final EdgeInsetsGeometry padding;

  const CounterButton({super.key, required this.icon, this.onTap, this.tooltip, this.padding = const EdgeInsets.all(20)});

  

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:onTap,
       icon: Icon(icon,  size: 30, color: Colors.white,),
       tooltip: tooltip,
      style: IconButton.styleFrom(
        backgroundColor: Colors.black,
        padding: padding,
      ),
      
       );
  }
}