import 'package:flutter/material.dart';

class ButtonDynamic extends StatelessWidget {
  ButtonDynamic(
      {@required this.actions,
      @required this.onPressed,
      this.height,
      this.width});
  final actions;
  final onPressed;
  final width;
  final height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: height,
      width: width,
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actions.actions != null ? actions.actions.length : 0,
        itemBuilder: (context, index) {
          return IconButton(
              onPressed: () => onPressed(
                  actions.actions[index].method, actions.actions[index].url),
              icon: getIcon(actions.actions[index].type));
        },
      ),
    );
  }

  Widget getIcon(type) {
    switch (type) {
      case "REFRESH":
        return Icon(Icons.refresh);
      case "DELETE":
        return Icon(Icons.delete);
      case "SAVE":
        return Icon(Icons.save);
      default:
        return Icon(Icons.remove);
    }
  }
}
