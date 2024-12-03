import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/bottomSheet_getX.dart';
import 'package:state_management/route_management.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => SecondPage()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Named dengan GetX")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.toNamed('/second');
        },
          child: Text("Pindah ke Halaman Kedua"),
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman kedua")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.back();
        }, child: Text("Kembali ke Halaman Pertama"),
        ),
      ),
    );
  }
}
