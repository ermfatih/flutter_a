import 'package:flutter/material.dart';
import 'package:flutter_a/101/ScreenDesign.dart';
import 'package:flutter_a/101/app_bar_learn.dart';
import 'package:flutter_a/101/button_learn.dart';
import 'package:flutter_a/101/card_learn.dart';
import 'package:flutter_a/101/navigation_learn.dart';
import 'package:flutter_a/202/animated_learn.dart';
import 'package:flutter_a/202/cache/shared_cache_learn.dart';
import 'package:flutter_a/202/form_learn.dart';
import 'package:flutter_a/202/image_learn_advance.dart';
import 'package:flutter_a/202/model_learn_view.dart';
import 'package:flutter_a/202/package_learn_view.dart';
import 'package:flutter_a/202/service/comment_view_learn.dart';
import 'package:flutter_a/202/service/service_learn_view.dart';
import 'package:flutter_a/202/service/sevice_post_learn.dart';
import 'package:flutter_a/202/sheet_learn.dart';
import 'package:flutter_a/202/state_manage/state_manage_view.dart';
import 'package:flutter_a/202/tab_learn.dart';
import 'package:flutter_a/202/theme/light_theme.dart';
import 'package:flutter_a/demos/chatApp.dart';
import 'package:flutter_a/101/color_learn.dart';
import 'package:flutter_a/101/container_sized_box_learning.dart';
import 'package:flutter_a/101/custom_widget_learn.dart';
import 'package:flutter_a/demos/color_demos_view.dart';
import 'package:flutter_a/demos/life_cycle_demos.dart';
import 'package:flutter_a/101/icon_learn.dart';
import 'package:flutter_a/101/image_learn.dart';
import 'package:flutter_a/101/indicator_learn.dart';
import 'package:flutter_a/101/list_tile_learn.dart';
import 'package:flutter_a/101/list_view_learn.dart';
import 'package:flutter_a/101/listview_builder_learn.dart';
import 'package:flutter_a/demos/my_collections_demos.dart';
import 'package:flutter_a/101/padding_learn.dart';
import 'package:flutter_a/101/page_view.dart';
import 'package:flutter_a/101/row_column_learn.dart';
import 'package:flutter_a/101/scaffold_learn.dart';
import 'package:flutter_a/101/stack_learn.dart';
import 'package:flutter_a/101/statefull_life_cycle_learn.dart';
import 'package:flutter_a/101/stateless_learn.dart';
import 'package:flutter_a/101/text_learning.dart';
import 'package:flutter_a/101/textfield_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme().theme,
      home: const SheetLearn(),
    );
  }
}

/*
* ThemeData.dark().copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Colors.red,
        ),
        iconTheme:const IconThemeData(color: Colors.white) ,
        //bunu yaptıktan sonra tüm appbarlar default olarak aşagıdaki gibi olur
        appBarTheme: const AppBarTheme(
            centerTitle: true,//appbardaki title ı ortalar
            //backgroundColor: Colors.transparent,
            elevation: 0,
            color: Colors.transparent
        ),
      ),*/
