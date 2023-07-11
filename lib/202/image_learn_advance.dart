import 'package:flutter/material.dart';

class ImageLearnAdvance extends StatefulWidget {
  const ImageLearnAdvance({Key? key}) : super(key: key);

  @override
  State<ImageLearnAdvance> createState() => _ImageLearnAdvanceState();
}

class _ImageLearnAdvanceState extends State<ImageLearnAdvance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePaths.bat.toWidget(),
    );
  }
}
enum ImagePaths{
  bat
}
extension ImagePathExtension on ImagePaths{
  String path(){
    return 'assets/png/$name.png';
  }
  Widget toWidget(){
    return Image.asset(path());
  }
}