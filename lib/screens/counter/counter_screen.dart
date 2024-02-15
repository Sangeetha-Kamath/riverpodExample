import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/constants/app_constants.dart';
import 'package:riverpod_example/screens/counter/provider/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = ChangeNotifierProvider((ref) => CounterProvider());
    
    return  Consumer(
      builder: (context, ref, child) {
       final count = ref.watch(counterProvider);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: Text(AppConstants.counterScreen),
          backgroundColor: Colors.blue,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
                  
                  ),
                  backgroundColor: Colors.blue,

                  
                ),
                onPressed: (){
                  count.increment();

              }, child: Text(AppConstants.increment),),

              Text(count.counter.toString()),
              
              
            ],
          ),
        ),
        );
      }
    );
  }
}