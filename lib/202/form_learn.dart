import 'package:flutter/material.dart';

class FormLearn extends StatefulWidget {
  const FormLearn({Key? key}) : super(key: key);

  @override
  State<FormLearn> createState() => _FormLearnState();
}

class _FormLearnState extends State<FormLearn> {
  final GlobalKey<FormState> _key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        //autovalidateMode: AutovalidateMode.onUserInteraction,
        //onChanged: () {print('a');},
        child: Column(
          children: [
            TextFormField(
              validator:  FormFieldValidation().isNotEmpty,
            ),
            ElevatedButton(onPressed: () {
              if(_key.currentState?.validate() ?? false){
                print('okey');
              }
            }, child: const Text('Kaydet'))
          ],
        ),
      ),
    );
  }
}
class FormFieldValidation{
  String? isNotEmpty(String? value){
    return (value?.isNotEmpty ?? false) ? null:'bu alan boş geçilemez';
  }
}