import 'dart:math';
import 'package:flutter/material.dart';
final randamizer=Random();
class DiceRoller extends StatefulWidget{
  @override
  State<DiceRoller> createState(){
    return _DiceRolling();
  }

}
class _DiceRolling extends State<DiceRoller>{
  var roll=2;
  void changing(){
    setState(() {
      roll=randamizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(context){
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image(
            image: AssetImage('assets/images/$roll.jpg'),
            width: 200,
          ),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: changing,
            child: const Text(
              "Roll Dice!",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          )
        ],
      );
  }
}