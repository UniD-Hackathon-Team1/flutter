import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/book_shelf_controller.dart';

class BookShelfView extends GetView<BookShelfController> {
  const BookShelfView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookShelfView'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {Get.toNamed(Routes.LETTER);},
          ),
        ],
      ),
      body: Column(
          children:<Widget>[
          Container(
            height: 620,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/book_shelf.jpg"),
                  fit: BoxFit.cover),
            ),
          child: GetBuilder<BookShelfController>(
            builder: (_) {
              return ListView.builder(
                itemCount: controller.letters  == null ? 0 : controller.letters!.letter!.length,
                itemBuilder: (BuildContext context, int index) {
                  // return new Card(
                  return MaterialButton(
                    onPressed: () { controller.changeExpanded(index); },
                    child: Card(
                      child: Column(
                        children: [
                          Text(_.letters!.letter![index].timeDate!.year.toString()+'.'+_.letters!.letter![index].timeDate!.month.toString()+'.'+_.letters!.letter![index].timeDate!.day.toString()),
                          Container(
                            height: 100,
                            color: Colors.greenAccent.withOpacity(0.1),
                            width: double.infinity,
                            child: Container(
                                child: Text(controller.letters!.letter![index].text!)),
                          ),
                        ],
                      )
                    ),
                  );
                },
              );
            },
          ),
          ),
        ]
      ),

    );
  }
}
