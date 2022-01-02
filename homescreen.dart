import 'package:flutter/material.dart';
import 'dart:math';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

       int leftDiceNumber=1;
       int rightDiceNumber=1;
       void roll(){
         setState(() {



       leftDiceNumber=Random().nextInt(6)+1;
       rightDiceNumber=Random().nextInt(6)+1;
       });
         // print(leftDiceNumber);
         // print(leftDiceNumber);
       }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children:  [

                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: getImage(leftDiceNumber)),
                  )),

                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: getImage(rightDiceNumber),),
                )),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: roll,
            child:Text('Roll'),
            )
          ],
        ),
      ),
    );
  }
}
Widget getImage(i){

  return Image( image:AssetImage('assets/image/dice$i.png'),);
}
