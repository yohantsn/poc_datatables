import 'package:poc_btg/utils/date_format.dart';

import 'actions.dart';

class Task {
  DateTime? creationDateTime;
  String? creationDateTimeFormated;
  String? taskId;
  String? type;
  bool? completed;
  int? priority;
  String? description;
  DateTime? deadLine;
  String? deadLineFormated;
  Actions? actions;

  Task(
      {this.creationDateTime,
      this.taskId,
      this.type,
      this.completed,
      this.priority,
      this.description,
      this.deadLine,
      this.actions});

  Task.fromJson(Map<String, dynamic> json) {
    creationDateTime = DateTime.tryParse(json['creationDateTime']);
    creationDateTimeFormated = DateFormat().ddMMYYYYHHMM(creationDateTime);
    taskId = json['taskId'];
    type = json['type'];
    completed = json['completed'];
    priority = json['priority'];
    description = json['description'];
    deadLine = DateTime.tryParse(json['deadLine']);
    deadLineFormated = DateFormat().ddMMYYYYHHMM(deadLine);
    if (json['actions'] != null) {
      actions = Actions.fromJson(json['actions']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['creationDateTime'] = this.creationDateTime;
    data['taskId'] = this.taskId;
    data['type'] = this.type;
    data['completed'] = this.completed;
    data['priority'] = this.priority;
    data['description'] = this.description;
    data['deadLine'] = this.deadLine;
    data['actions'] = this.actions!.toJson();

    return data;
  }
}
