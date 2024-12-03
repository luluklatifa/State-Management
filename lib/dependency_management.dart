import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/bottomSheet_getX.dart';

void main() {
  runApp(MyApp());
}
class MyController extends GetxController {
  var counter = 0.obs;

  void incrementt() {
    counter++;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MyController());
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Manajemen Dependency dengan GetX")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx((){
                return Text("Counter: ${Get.find<MyController>().counter}", style: TextStyle(fontSize: 24),
                );
              }),
              ElevatedButton(onPressed: () {
                Get.find<MyController>().incrementt();
              },
                child: Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}