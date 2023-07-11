import 'package:flutter/material.dart';

class TextLearning extends StatelessWidget {
  const TextLearning({Key? key}) : super(key: key);
  final String name='fatih';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(('senin inanılmaz bir gücün var $name'*10),
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.blue,
                    wordSpacing: 2,
                    letterSpacing: 2,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    //decoration: TextDecoration.underline,
                  )),
              Text(('senin inanılmaz bir gücün var $name'*10),
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: ProjectStyles.welcomeStyle),
            ],
          ),
      ),
    );
  }
}
class ProjectStyles{
  static TextStyle welcomeStyle=const TextStyle(
  color: Colors.blue,
  wordSpacing: 2,
  letterSpacing: 2,
  fontSize: 16,
  fontWeight: FontWeight.w600,
  //decoration: TextDecoration.underline,
  );
}
