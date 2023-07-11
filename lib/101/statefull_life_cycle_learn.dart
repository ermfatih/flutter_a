import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.mesaj}) : super(key: key);
  final String mesaj;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  late bool _isOdd;
  String _message='';
  @override
  void initState() {
    super.initState();
    _message=widget.mesaj;
    _isOdd=widget.mesaj.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if(_isOdd){
      _message+='Tek';
    }
    else{
      _message+='cift';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd?  ElevatedButton(onPressed: () {}, child: Text(_message)): TextButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
