import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janrealism/models/journalist_user_model.dart';
import 'package:janrealism/service/firestore_service.dart';

class AuthController extends GetxController {
  static Rx<String>? journalistUid;
  static Rx<JournalistUserModel>? authenticatedJournalist;

  Future<void> checkUid(String docId, BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) => const Center(child: CircularProgressIndicator()));
    String? uid = await FirestoreService().checkUid(docId);
    if (uid != null) {
      Navigator.pop(context);
      journalistUid = uid.obs;
    } else {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
              title: Text("Error"), content: Text("Invalid doc Id")));
    }
  }

  Future<void> getJournalistUser(
      String docId, String userName, BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) => const Center(child: CircularProgressIndicator()));

    authenticatedJournalist!.value = await FirestoreService()
        .getJournalistUser(docId, journalistUid!.value, userName);
    Navigator.pop(context);
    Get.snackbar("Success", "Journalist Registered Successfully");
  }
}
