import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String docId;
  String task;
  String date;

  TodoModel(String docId, Map<String, dynamic> data) {
    this.docId = docId;
    this.task = data['task'];
    this.date = data['date'];
  }

  Map<String, dynamic> toMap() {
    return {'task': this.task, 'date': this.date};
  }

  Future<DocumentReference> save() async {
    DocumentReference doc =
        await FirebaseFirestore.instance.collection('todos').add(this.toMap());
    return doc;
  }

  Future<void> delete() async {
    await FirebaseFirestore.instance.collection('todos').doc(this.docId).delete();
  }

   Future<void> update() async {
    await FirebaseFirestore.instance.collection('todos').doc(this.docId).update(this.toMap());
  }

}
