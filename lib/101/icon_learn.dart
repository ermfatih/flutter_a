import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
  final _title = 'Hello';
  final IconSizes iconSizes = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: Theme.of(context).iconTheme.color,
            iconSize: iconSizes.iconSmall,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColors.valencia,
            iconSize: iconSizes.iconSmall,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColors.valencia,
            iconSize: iconSizes.iconSmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 50;
}

class IconColors {
  final Color valencia = const Color(0xffCD462D);
}
