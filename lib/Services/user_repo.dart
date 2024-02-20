import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_mart/models/inventory_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createItem(inventoryItem item) async{
    await _db.collection("inventory").add(item.toJson()).whenComplete((){
      Get.snackbar("Success!!!", "Inventory has being added.",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.1),
      colorText: Colors.green,
      );
    })
    .catchError((error, StackTrace){
      Get.snackbar("Error", "Something went wrong. Try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }
}