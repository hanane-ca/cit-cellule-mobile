

class TodoModel {
  String docId;
  String task;
  String date;

  TodoModel(String docId, Map<String,dynamic> data) {
    this.docId = docId;
    this.task = data['task'];
    this.date = data['date'];
  }
}