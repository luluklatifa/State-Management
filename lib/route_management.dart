import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/bottomSheet_getX.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigasi dengan GetX")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.to(SecondPage());
        }, child: Text("Pindah ke Halaman Kedua"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.back();
        }, child: Text("Kembali ke Halaman Pertama"),
        ),
      ),
    );
  }
}