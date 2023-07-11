import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            buildCounter: (context, {int? currentLength, bool? isFocused, maxLength}) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 1),
                height: 10,
                width: 30.0 * (currentLength ?? 0),
                color: Colors.blue[100],
              );
            },
            maxLength: 25,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border:OutlineInputBorder(),
              label: Text('Mail '),
              //fillColor: Colors.blueGrey,
              //filled: true,


            ),
          ),
          TextField(
            
          ),
        ],
      ),
    );
  }
}
