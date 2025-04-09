import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> buttons =
  [
    'c','DEL','%','/',
    '9','8','7','x',
    '6','5','4','-',
    '0','.','ANS','='

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.amber,
              child: GridView.builder(
                itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (BuildContext context ,int index){
                return MyButton(buttonText: buttons[index],
                color: Colors.amber,
                textColor: Colors.white,);
                }
     )
              ),
            ),
        ],
      ),
    );
  }
  // bool isOperator(String x){
  //   if(x=)
  // }
}
