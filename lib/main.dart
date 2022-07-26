import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'navigation/navigation.dart';
import 'views/homePageUi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(850.9090909090909, 392.72727272727275),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return SafeArea(
            child: MaterialApp(
              navigatorKey: Navigation.navkey,
              home: HomePageUi(),
            ),
          );
        });
  }
}
