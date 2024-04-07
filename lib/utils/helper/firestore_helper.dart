import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Create or Update a document
  Future<void> setDocument(String collectionPath, String docId, Map<String, dynamic> data) async {
    try {
      await _db.collection(collectionPath).doc(docId).set(data, SetOptions(merge: true));
      print("Document added/updated successfully");
    } catch (e) {
      print("Error setting document: $e");
      throw Exception("Error setting document");
    }
  }

  // Read a single document
  Future<DocumentSnapshot> getDocument(String collectionPath, String docId) async {
    try {
      DocumentSnapshot doc = await _db.collection(collectionPath).doc(docId).get();
      print("Document retrieved successfully");
      return doc;
    } catch (e) {
      print("Error getting document: $e");
      throw Exception("Error getting document");
    }
  }

  // Delete a document
  Future<void> deleteDocument(String collectionPath, String docId) async {
    try {
      await _db.collection(collectionPath).doc(docId).delete();
      print("Document deleted successfully");
    } catch (e) {
      print("Error deleting document: $e");
      throw Exception("Error deleting document");
    }
  }

  // Read all documents in a collection
  Future<List<QuerySnapshot>> getCollection(String collectionPath) async {
    try {
      QuerySnapshot querySnapshot = await _db.collection(collectionPath).get();
      print("Collection retrieved successfully");
      return [querySnapshot];
    } catch (e) {
      print("Error getting collection: $e");
      throw Exception("Error getting collection");
    }
  }

  // Update a document
  Future<void> updateDocument(String collectionPath, String docId, Map<String, dynamic> data) async {
    try {
      await _db.collection(collectionPath).doc(docId).update(data);
      print("Document updated successfully");
    } catch (e) {
      print("Error updating document: $e");
      throw Exception("Error updating document");
    }
  }
}
