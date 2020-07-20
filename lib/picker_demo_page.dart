import 'package:flutter/material.dart';

import 'nikkan_kinoe.dart';
import 'nikkan_kinoto.dart';
import 'nikkan_hinoe.dart';
import 'nikkan_hinoto.dart';
import 'nikkan_tsutinoe.dart';
import 'nikkan_tsutinoto.dart';
import 'nikkan_kanoe.dart';
import 'nikkan_kanoto.dart';
import 'nikkan_mizunoe.dart';
import 'nikkan_mizunoto.dart';

class PickerDemoPage extends StatelessWidget {
  String SeiNen = '1900';
  String SeiTuki = '1';
  String SeiHi = '1';
  DateTime Date0 = DateTime(1900, 1, 1);
  DateTime Date1 = DateTime(1900, 1, 1);
  DateTime Date2;
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
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('images/中トトロ.jpg'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  child: Text('生年月日入力'),
                  onPressed: () async {
                    final Date2 = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(DateTime.now().year - 99),
                      lastDate: DateTime(DateTime.now().year + 30),
                      initialDatePickerMode: DatePickerMode.year,
                      locale: const Locale('ja'),
                    );
                    print('$Date2');

                    nissuu = Date2.difference(Date0).inDays;
                    nikkan = nissuu % 10;

                    print('$Date0');
                    print('$Date1');
                    print('$Date2');
                    print('$nissuu');
                    print('$nikkan');
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
                        MaterialPageRoute(
                            builder: (context) => NikkanTsutinoe()),
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
                        MaterialPageRoute(
                            builder: (context) => NikkanMizunoe()),
                      );
                    } else {
                      print('癸');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NikkanMizunoto()),
                      );
                    }

                    if (Date2 != null) {
                      // do something
                      print('$Date2');
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  child: Text('戻る'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
