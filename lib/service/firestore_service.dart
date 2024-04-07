import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:janrealism/utils/hash_util.dart';
import 'package:janrealism/utils/helper/firestore_helper.dart';

class FirestoreService {
  Future<String?> checkUid(String docId) async {
    DocumentSnapshot<Object?> doc =
        await FirestoreHelper().getDocument("verified-waiters", docId);
    if (doc.exists) {
      try {
        List<dynamic>? uniqueId = doc["uniqueIds"];
        if (uniqueId == null || uniqueId.isEmpty) {
          print("List is empty");
          return null;
        }
        String uid = uniqueId[0];
        return uid;
      } catch (e) {
        print(e);
        print("List is empty");
        return null;
      }
    }
    print("Doc does not exist");
    return null;
  }
}
