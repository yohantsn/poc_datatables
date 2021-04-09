import 'package:poc_btg/models/card_model.dart';
import 'package:poc_btg/models/task/actions.dart';
import 'package:poc_btg/models/task/task.dart';

class PageButtonController {
  int refreshes = 0;
  final tasks = <Task>[];
  final task1 = {
    "creationDateTime": "2021-04-07T10:50:50.417Z",
    "taskId": "123444",
    "type": "TODO",
    "completed": false,
    "priority": 1,
    "description": "Bater Posição",
    "deadLine": "2021-04-07T16:50:50.417Z",
    "actions": [
      {
        "type": "DELETE",
        "description": "deletar task",
        "method": "DELETE",
        "endpoint": "something",
        "url": "https://DELETE"
      },
      {
        "type": "DELETE",
        "description": "deletar task",
        "method": "DELETE",
        "endpoint": "something",
        "url": "https://DELETE2"
      }
    ]
  };
  final task2 = {
    "creationDateTime": "2021-04-07T10:50:50.417Z",
    "taskId": "123444",
    "type": "TODO",
    "completed": false,
    "priority": 0,
    "description": "Bater Posição",
    "deadLine": "2021-04-07T16:50:50.417Z",
    "actions": [
      {
        "type": "DELETE",
        "description": "deletar task",
        "method": "DELETE",
        "endpoint": "something",
        "url": "https://DELETE"
      },
      {
        "type": "SAVE",
        "description": "deletar task",
        "method": "POST",
        "endpoint": "something",
        "url": "https://SAVE"
      },
      {
        "type": "REFRESH",
        "description": "deletar task",
        "method": "GET",
        "endpoint": "something",
        "url": "https://REFRESH"
      },
    ]
  };
  final task3 = {
    "creationDateTime": "2021-04-07T10:50:50.417Z",
    "taskId": "123444",
    "type": "TODO",
    "completed": false,
    "priority": 0,
    "description": "Bater Posição",
    "deadLine": "2021-04-07T16:50:50.417Z",
    "actions": [
      {
        "type": "SAVE",
        "description": "deletar task",
        "method": "POST",
        "endpoint": "something",
        "url": "https://SAVE"
      },
      {
        "type": "REFRESH",
        "description": "deletar task",
        "method": "GET",
        "endpoint": "something",
        "url": "https://REFRESH"
      },
    ]
  };

  void refreshTasks() {
    tasks.add(Task.fromJson(task1));
    tasks.add(Task.fromJson(task2));
    tasks.add(Task.fromJson(task3));
    tasks.sort((a, b) => a.priority!.compareTo(b.priority!));
  }
}
