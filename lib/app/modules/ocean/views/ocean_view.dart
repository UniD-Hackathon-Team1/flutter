import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
