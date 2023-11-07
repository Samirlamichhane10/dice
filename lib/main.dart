import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice 4"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: dicePage(),
      ),
    ),
  );
}
class dicePage extends StatefulWidget {
  const dicePage({super.key});

  @override
  State<dicePage> createState() => _dicePageState();
}

class _dicePageState extends State<dicePage> {
  int topLeft = 1;
  int topRight = 1;
  int bottomRight = 1;
  int bottomLeft = 1;
  //int position = 1;
  //String name="1";

  //Widget buildRandom(String string)
 // {
    //return  Expanded(child:TextButton(
      //onPressed: (){
        //setState(() {
          //String name=string;
          //name= '$Random().nextInt(6)+1';
        //});
      //},
     // child: Image.asset('images/dice$name.png',),
    //),
   // );
 // }

  Widget buildName(String string) //For player1 player 2 3 and 4
  {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(string,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white,
                fontSize: 20,
              ),
                ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Row(

            children:<Widget> [



              //buildRandom('topLeft'),
              Expanded(child:TextButton(
                onPressed: (){
                  setState(() {
                    topLeft=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$topLeft.png',),
              ),
              ),
              Expanded(child:TextButton(
                onPressed: (){
                  setState(() {
                    topRight=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$topRight.png',),
              ),
              ),
      ]
          ),
          Row(
            children: <Widget>
          [
            buildName('Player 1'),
            buildName('Player 2'),
            ],
          ),
          Row(
            children:[ Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    bottomLeft=Random().nextInt(6)+1;
                  });
                },
                  child: Image.asset('images/dice$bottomLeft.png'),
              ),
            //height:200 ,
            //width:200),
            ),
             Expanded (child: TextButton(
               onPressed: (){
                 setState(() {
                   bottomRight=Random().nextInt(6)+1;
                 });
               },
                 child: Image.asset('images/dice$bottomRight.png')),
                 // height:200 ,
                  //width:200
              ),

      ]
          ),
          Row(
            children: <Widget>[

               buildName('Player 3'),
               buildName('Player 4'),



            ],

          ),


   ],





      ),
    );

  }
}


