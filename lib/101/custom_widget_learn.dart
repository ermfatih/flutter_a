import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final title = 'food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomElevatedButton(title: title,onPressed:() {},),

        ],
      ),
    );
  }
}

class ColorUtils {
  final Color red = Colors.red;
  final Color white = Colors.white;
}
class PaddingUtils{
  final EdgeInsets normalPadding=const EdgeInsets.all(8.0);
  final EdgeInsets normalPadding2x=const EdgeInsets.all(16.0);
}
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key,required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: ColorUtils().red, shape: const StadiumBorder()),
        child: Padding(
          padding: PaddingUtils().normalPadding,
          child: Text(title,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: ColorUtils().white, fontWeight: FontWeight.bold)),
        ));
  }
}

