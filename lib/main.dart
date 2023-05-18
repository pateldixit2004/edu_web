
import 'package:edu_web/provider/productProvider.dart';
import 'package:edu_web/screen/education/ho_screen.dart';
import 'package:edu_web/screen/education/web_sc.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
      Sizer(
        builder: (context, orientation, deviceType) =>  MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => productProvider(),),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/':(context)=> Education_Screeb(),
              'webs':(context)=> webscreen(),
              // '/':(context)=> HomeScreen(),
              // 'web':(context)=> WebScreen(),
            },
          ),
        ),
      )
  );
}