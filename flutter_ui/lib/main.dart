import 'package:flutter/material.dart';
import 'package:flutter_ui/Controller/MenuController.dart';
import 'package:flutter_ui/Screens/home_page.dart';
import 'package:flutter_ui/themes/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
        canvasColor: AppColor.secondColor
      ),
      home:  MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => MenuController())
      ],
      child: const  HomePage(),
      ) ,
    );
  }
}


