import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:janrealism/service/firestore_service.dart';

class AuthController extends GetxController {
  static String userName = "";
  static Rx<String>? journalistUid;
}
