import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a/101/image_learn.dart';

class ScreenDesign extends StatelessWidget {
  const ScreenDesign({Key? key}) : super(key: key);
  final String title = 'Create your first note';
  final String subTitle='Add a note';
  final String createANote ='Create a Note';
  final String importNotes ='Import a Note';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.vertical,
        child: Column(
          children: [
            PngImages(name: ImageItems().bat),
            _TitleWidget(title: title),
            Padding(
              padding:PaddingItems.horizontal,
              child: _SubtitleWidget(subTitle: subTitle),
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: SizedBox(height: ButtonHeight.buttonHeight,child: Center(child: Text(createANote,style: Theme.of(context).textTheme.headline6,)))),
            TextButton(onPressed: () {}, child: Text(importNotes))
          ],
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({Key? key,this.textAlign=TextAlign.center ,required this.subTitle}) : super(key: key);

  final String subTitle;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(subTitle * 10,textAlign: textAlign,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black, fontWeight: FontWeight.w300)
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ));
  }
}

class PaddingItems {
  static const vertical = EdgeInsets.symmetric(vertical: 20);
  static const horizontal = EdgeInsets.symmetric(horizontal: 20);
}
class ButtonHeight{
  static const double buttonHeight=40;
}
