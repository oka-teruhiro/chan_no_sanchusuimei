import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp5/nikkan_hinoe.dart';
import 'package:flutterapp5/nikkan_hinoto.dart';
import 'package:flutterapp5/nikkan_kanoe.dart';
import 'package:flutterapp5/nikkan_kanoto.dart';
import 'package:flutterapp5/nikkan_kinoe.dart';
import 'package:flutterapp5/nikkan_kinoto.dart';
import 'package:flutterapp5/nikkan_mizunoe.dart';
import 'package:flutterapp5/nikkan_mizunoto.dart';
import 'package:flutterapp5/nikkan_tsutinoto.dart';

import 'nikka_tsutinoe.dart';

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
                  seinen = int.parse(SeiNen);
                  seituki = int.parse(SeiTuki);
                  seihi = int.parse(SeiHi);
                  Date1 = DateTime(seinen, seituki, seihi);
                  nissuu = Date1.difference(Date0).inDays;
                  nikkan = nissuu % 10;

                  print('$Date0');
                  print('$Date1');
                  print('$nissuu');
                  print('$nikkan');
                  print(Nikkan);

                  Nikkan = 'NikkanTsutinoe';
                  print(Nikkan);

                  if (nikkan == 0) {
                    print('甲');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanKinoe()),
                    );
                  } else if (nikkan == 1) {
                    print('乙');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanKinoto()),
                    );
                  } else if (nikkan == 2) {
                    print('丙');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanHinoe()),
                    );
                  } else if (nikkan == 3) {
                    print('丁');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanHinoto()),
                    );
                  } else if (nikkan == 4) {
                    print('戊');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanTsutinoe()),
                    );
                  } else if (nikkan == 5) {
                    print('己');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NikkanTsutinoto()),
                    );
                  } else if (nikkan == 6) {
                    print('庚');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanKanoe()),
                    );
                  } else if (nikkan == 7) {
                    print('辛');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanKanoto()),
                    );
                  } else if (nikkan == 8) {
                    print('壬');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanMizunoe()),
                    );
                  } else {
                    print('癸');

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NikkanMizunoto()),
                    );
                  }

                  //gamenSenniNikkan(nikkan);
                  //print('$Date2');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*void gamenSenniNikkan(int nikkan) {
    print('北');

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NikkanTsutinoe()),
    );
  }:*/
}
