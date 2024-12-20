import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/bindings_builder.dart';
import 'package:state_management/route_management.dart';

void main() {
  runApp(MyApp());
}
class ControllerA extends GetxController {
  var valueA = 'A'.obs;
}
class ControllerB extends GetxController {
  var valueB = 'B'.obs;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: BindingsBuilder(() {
            Get.put(ControllerA());
            Get.put(ControllerB());
          }),
    ),
    ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Class Bindings dengan GetX")),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Value A: ${Get.find<ControllerA>().valueA}"),
              Text("Value B: ${Get.find<ControllerB>().valueB}"),
              ],
          ),
        ),
      ),
    );
  }
}