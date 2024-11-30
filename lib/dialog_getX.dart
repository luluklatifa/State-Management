import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/snackbar_getx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog Example")),
        body: DialogExample(),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Halo"),
                      content: Text("This is normal dialog"),
                      actions: [
                        TextButton(onPressed: () => Navigator.pop(context),
                            child: Text("Close"),
                        ),
                      ],
                    ),
                );
          }, child: Text("Show Normal Dialog"),
          ),
          ElevatedButton(
              onPressed: (){
                Get.defaultDialog(
                  title: "Hello",
                  middleText: "This is a Get Dialog",
                );
              }, child: Text("Show GetX Dialog"),
          ),
        ],
      ),
    );
  }
}