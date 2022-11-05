import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:unid2022/app/modules/letter_write/views/letter_write_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/letter_take_controller.dart';

class LetterTakeView extends GetView<LetterTakeController> {
  const LetterTakeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(controller.letters  == null ? 0 : controller.letters!.letter!.length);
    return Scaffold(
      appBar: AppBar(
        title: const Text('유리병'),
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
            height: 400,
            child: GetBuilder<LetterTakeController>(
              builder: (_) {
                print(controller.letters  == null);
                return new ListView.builder(
                  itemCount: controller.letters  == null ? 0 : controller.letters!.letter!.length,
                  itemBuilder: (BuildContext context, int index) {
                    /*
                    double opcaity = (1.0 - 0.01 * index) < 0 ? 0 : (1.0 - 0.01 * index);
                    return Stack(
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.blue.withOpacity(opcaity),
                          child: Text(
                            controller.letters!.letter![index].text!,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),

                      ]
                    );*/

                    return new Card(
                      color: Colors.indigo[index * 100],
                      child: new Text(controller.letters!.letter![index].text!,
                        style: TextStyle(fontSize: 20),
                        //style: TextStyle(fontSize: 20, backgroundColor: Colors.lightGreen),
                      ),
                    );

                  },
                );
              },
            ),
          ),

          TextField(
            //style: TextStyle(fontSize: 20, backgroundColor: Colors.lightBlue),
            style: TextStyle(fontSize: 20),
            controller: controller.content,
            decoration: InputDecoration(
                labelText: "이야기 입력",
                hintText: '생각나는 이야기를 적어주세요',
                border: OutlineInputBorder(), //외곽선
                isDense: true

            ),
          ),
        ]
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 답장 추가하는 것을 추가해서 넘겨줘야 함
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.create),
      ),
    );
  }
}
