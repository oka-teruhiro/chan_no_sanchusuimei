import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NikkanInput extends StatelessWidget {
  final myFocusNode = FocusNode();
  String name;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生年月日を入力して下さい'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: '年'),
                  onChanged: (text) {
                    name = text;
                    print("$name");
                  }),
              TextField(
                controller: myController,
                focusNode: myFocusNode,
              ),
              RaisedButton(
                child: Text('新規登録'),
                onPressed: () {
                  //
                  //myFocusNode.requestFocus();
                  //print(myController.text);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the user has entered by using the
                        // TextEditingController.
                        content: Text(myController.text),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
