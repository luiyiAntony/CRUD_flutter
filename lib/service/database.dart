import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  // CREATE
  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
  }

  // READ
  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    Stream<QuerySnapshot> list =
        await FirebaseFirestore.instance.collection("Employee").snapshots();
    return list;
  }

  // UPDATE
  Future updateEmployeeDetail(
      String id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .update(updateInfo);
  }

  // DELETE
  Future deleteEmployee(String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .delete();
  }
}
