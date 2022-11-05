import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../letter_take/views/letter_take_view.dart';
import '../controllers/ocean_controller.dart';

class OceanView extends GetView<OceanController> {
  const OceanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OceanView'),
        centerTitle: true,
      ),
      body:
      Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/ocean.jpg"),
              fit: BoxFit.cover),
        ),
        // add an elevation
        child: Container(
          width: 30,
          height: 40,
          child: MaterialButton(
            // Size the button
            onPressed: () {
              // 유리병을 눌렀을 때의 기능을 넣어주세요
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Hello There!'),
                  duration: Duration(milliseconds: 1500),
                ),
              );
              //////////////////////
              // 편지를 보여줄거임
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context)=> const LetterTakeView()),
             );
            },
            child: Image.asset(
              "assets/images/bo.png",
            ),
          ),
        ),
            )
    /*
      Center(
        child: Text(
          'OceanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    */
    );
  }
}
