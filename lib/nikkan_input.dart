import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NikkanInput extends StatelessWidget {
  final myFocusNode = FocusNode();
  final myController = TextEditingController();

  String name;
  String SeiNen = '1957';
  String SeiTuki = '3';
  String SeiHi = '31';
  String SeiNenGatuHi = '1957年3月31日';
  String Nikkan = '0';
  DateTime Date2 = DateTime.now();
  DateTime Date0 = DateTime(1900, 1, 1);
  DateTime Date1 = DateTime(1900, 1, 1);
  int seinen = 1957;
  int seituki = 3;
  int seihi = 31;
  int nissuu = 0;
  int nikkan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生年月日を入力して下さい'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: '年'),
                  onChanged: (text) {
                    SeiNen = text;
                    print("$SeiNen");
                  }),
              TextField(
                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: '月'),
                  onChanged: (text) {
                    SeiTuki = text;
                    print("$SeiTuki");
                  }),
              TextField(
                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: '日'),
                  onChanged: (text) {
                    SeiHi = text;
                    print("$SeiHi");
                  }),
              /*TextField(
                decoration: InputDecoration(
                    //border: InputBorder.none,
                    hintText: '日'),
                controller: myController,
                //focusNode: myFocusNode,
              ),*/
              RaisedButton(
                child: Text('入力完了'),
                onPressed: () {
                  //
                  SeiNenGatuHi = SeiNen + '年' + SeiTuki + '月' + SeiHi + '日';
                  //myFocusNode.requestFocus();
                  print('$SeiNenGatuHi');

                  print('$Date2');
                  print('$Date0');
                  seinen = int.parse(SeiNen);
                  seituki = int.parse(SeiTuki);
                  seihi = int.parse(SeiHi);
                  Date1 = DateTime(seinen, seituki, seihi);

                  nissuu = Date1.difference(Date0).inDays;
                  nikkan = nissuu % 10;

                  print('$nissuu');
                  print('$nikkan');
                  //print('$Date2');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
