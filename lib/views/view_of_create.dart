import 'package:flutter/material.dart';
import 'package:net_dio_getx/controllers/create_controller.dart';


Widget viewOfCreate(BuildContext context, CreateController controller) {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.titleController(),
              decoration: InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(right: 15, left: 15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: controller.bodyController(),
              decoration: InputDecoration(
                labelText: "Body",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(right: 15, left: 15),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: FlatButton(
                child: Text('Create Post', style: TextStyle(color: Colors.white, fontSize: 20),),
                onPressed: () {
                  controller.apiCreatePost(context);
                },
              ),
            ),
          ],
        ),
      ),

      controller.isLoading() ? Center(child: CircularProgressIndicator()) : SizedBox.shrink(),
    ],
  );
}