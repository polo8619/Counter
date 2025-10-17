import 'package:counter_plus_plus/controllers/counter_controller.dart';
import 'package:counter_plus_plus/widgets/counter_button.dart';
import 'package:counter_plus_plus/widgets/counter_display.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count =0;
  final controller = CounterController();
  //final isZero=true;

  @override
  void initState() {
    _count = controller.counter;
    super.initState();
  }

  void _syncFromController() {
    setState(() {
      _count=controller.counter;
    });
  }

  @override
  Widget build(BuildContext context) {
 final isZero = _count== 0;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Counter++", style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Reset");
             
                controller.reset();
                _syncFromController();
             
            },
            icon: const Icon(Icons.lock_reset_outlined, color: Colors.white,),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CounterDisplay(value: _count)
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children:[
                CounterButton(
                  tooltip: 'Diminué',
                  onTap: isZero? null:(){
                    
                  final ok = controller.decrement();
                   _syncFromController();
                   if(!ok){
                    if(!mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Le compteur s'arrette a 0")));
                  }
                  debugPrint("decrement");
                },
                icon: Icons.remove,
                ),
                
                const SizedBox(width: 20,),
                CounterButton(
                   tooltip: 'Augmenté',
                  onTap: (){
                      debugPrint("Increment");
                       controller.increment();
                       _syncFromController();
                },
                icon:Icons.add,
                
                ),
                
              ]
            )
          ],
        ),
      ),
    );
  }
}