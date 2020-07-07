import 'dart:ui';

import 'package:flutter/material.dart';

import 'nikka_tsutinoe.dart';
import 'nikkan_hinoe.dart';
import 'nikkan_hinoto.dart';
import 'nikkan_kanoe.dart';
import 'nikkan_kanoto.dart';
import 'nikkan_kinoe.dart';
import 'nikkan_kinoto.dart';
import 'nikkan_mizunoe.dart';
import 'nikkan_mizunoto.dart';
import 'nikkan_tsutinoto.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '甲';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャンの三柱推命　　Ver_1.2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // <= 今回のターゲット
          children: <Widget>[


            Image.asset(
                'images/チャン_1.jpg'
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text('あなたの日干はなんですか？？'),
            ),

            Container(
              width: double.infinity,
              height: 280,
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: Text('甲'),
                          onPressed: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NikkanKinoe(),
                              )
                            );
                            text = result;
                            print(text);
                          },
                        ),
                        RaisedButton(
                          child: Text('丙'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanHinoe(),
                                )
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('戊'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanTsutinoe(),
                                )
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('庚'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanKanoe(),
                                )
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('壬'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanMizunoe(),
                                )
                            );
                          },
                        ),


                      ],
                    ),
                  ),

                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: Text('乙'),
                          onPressed: () async {
                            final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanKinoto(),
                                )
                            );
                            text = result;
                            print(text);
                          },
                        ),
                        RaisedButton(
                          child: Text('丁'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanHinoto(),
                                )
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('己'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanTsutinoto(),
                                )
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('辛'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanKanoto(),
                                )
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('癸'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NikkanMizunoto(),
                                )
                            );
                          },
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}