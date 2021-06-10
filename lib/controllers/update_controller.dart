import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:net_dio_getx/model/post_model.dart';
import 'package:net_dio_getx/services/dio_service.dart';


class UpdateController extends GetxController {
  RxBool isLoading = false.obs;
  var titleController = TextEditingController().obs;
  var bodyController = TextEditingController().obs;
  var _post = Post();

  void getOldPost(Post post) {
    _post = post;
    titleController.value.text = _post.title;
    bodyController.value.text = _post.body;
  }

  Future apiUpdatePost(BuildContext context) async{
    isLoading(true);

    String title = titleController.value.text.trim().toString();
    String body = bodyController.value.text.trim().toString();
    Post post = Post(title: title, body: body, userId: _post.userId, id: _post.id);

    var response = await DioService.PUT(DioService.API_UPDATE + _post.id.toString(), DioService.paramsUpdate(post));
    isLoading(false);
    Navigator.pop(context, response);
  }
}