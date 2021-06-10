import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:net_dio_getx/controllers/create_controller.dart';
import 'package:net_dio_getx/views/view_of_create.dart';

class CreatePage extends StatelessWidget {

  static final String id = "create_page";
  final CreateController controller = Get.put(CreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Create new post'),
      ),
      backgroundColor: Colors.white,
      body: Obx(() => viewOfCreate(context, controller)),
    );
  }
}