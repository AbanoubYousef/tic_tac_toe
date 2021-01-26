import "package:flutter/material.dart";
class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callBack;
  final actionText;
  CustomDialog(this.title, this.content, this.callBack, [this.actionText="Reset"]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        new FlatButton(
            onPressed: callBack,
            color: Colors.white,
            child: Text(actionText,style: TextStyle(color: Colors.black),))
      ],
    );
  }
}
