import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:net_dio_getx/controllers/update_controller.dart';
import 'package:net_dio_getx/model/post_model.dart';
import 'package:net_dio_getx/views/view_of_update.dart';


class UpdatePage extends StatelessWidget {

  static final String id = "update_page";
  final UpdateController controller = UpdateController();
  final Post post;

  UpdatePage({this.post});

  @override
  Widget build(BuildContext context) {
    controller.getOldPost(post);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Update post'),
      ),
      backgroundColor: Colors.white,
      body: Obx(() => viewOfUpdate(context, controller)),
    );
  }
}