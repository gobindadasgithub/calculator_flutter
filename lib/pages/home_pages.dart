import 'package:flutter/material.dart';

import 'text_style.dart';
class HomePage extends StatefulWidget {
  final String msg;

  const HomePage({Key? key, required this.msg}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _num1 = '';
  String _num2 = '';
  String _operator = '';
  String _displayString = '';
  num _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              '$_result',
                              style: TextStyle(
                                  fontSize: 80, color: Colors.orangeAccent),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              _displayString,
                              style:
                              TextStyle(fontSize: 40, color: Colors.grey),
                            )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent),
                          onPressed: () {
                            _calculation('%');
                          },
                          child: Text('%'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent),
                          onPressed: () {
                            setState(() {
                              if (_displayString.length > 0) {
                                _displayString = _displayString.substring(
                                    0, _displayString.length - 1);
                              }
                            });
                          },
                          child: Text('Del'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent),
                          onPressed: () {
                            setState(() {
                              _displayString = '';
                              _result = 0;
                            });
                          },
                          child: Text('C'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            _calculation('+');
                          },
                          child: Text(
                            '+',
                            style: txtBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('7');
                          },
                          child: Text('7'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('8');
                          },
                          child: Text('8'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('9');
                          },
                          child: Text('9'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            _calculation('-');
                          },
                          child: Text(
                            '-',
                            style: txtBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('4');
                          },
                          child: Text('4'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('5');
                          },
                          child: Text('5'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('6');
                          },
                          child: Text('6'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            _calculation('*');
                          },
                          child: Text(
                            '*',
                            style: txtBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('1');
                          },
                          child: Text('1'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('2');
                          },
                          child: Text('2'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('3');
                          },
                          child: Text('3'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            _calculation('/');
                          },
                          child: Text(
                            '/',
                            style: txtBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('0');
                          },
                          child: Text('0'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.shade700),
                          onPressed: () {
                            _calculation('.');
                          },
                          child: Text('.'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: _showResult,
                          child: Text(
                            '=',
                            style: txtBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _calculation(String s) {
    setState(() {
      _displayString += s;
    });
  }

  void _showResult() {}
}
