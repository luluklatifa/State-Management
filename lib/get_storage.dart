import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:state_management/bindings_builder.dart';
import 'package:state_management/class_bindings.dart';

void main() async {
  await GetStorage.init();
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
  final GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Storage Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  box.write('username', 'Flutter User');
                  Get.snackbar("Data", "Data disimpan");
                },
                child: Text('"Simpan Data'),
            ),
            ElevatedButton(
                onPressed: () {
                  String username = box.read('username') ?? 'Tidak ada data';
                  Get.snackbar("Data", username);
                },
              child: Text("Ambil Data"),
            ),
            ElevatedButton(
                onPressed: (){
                  box.remove('username');
                  Get.snackbar("Data", "Data dihapus");
                },
                child: Text("Hapus Data"),
            ),
          ],
        ),
      ),
    );
  }
}