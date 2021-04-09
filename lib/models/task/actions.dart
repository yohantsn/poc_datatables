class Actions {
  final actions = <Action>[];

  Actions();

  Actions.fromJson(List<Map<String, dynamic>> json) {
    actions.clear();
    json.forEach((v) {
      actions.add(new Action.fromJson(v));
    });
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['actions'] = this.actions.map((v) => v.toJson()).toList();
    return data;
  }
}

class Action {
  String? type;
  String? description;
  String? method;
  String? endpoint;
  String? url;

  Action({this.type, this.description, this.method, this.endpoint, this.url});

  Action.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    method = json['method'];
    endpoint = json['endpoint'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['description'] = this.description;
    data['method'] = this.method;
    data['endpoint'] = this.endpoint;
    data['url'] = this.url;
    return data;
  }
}
