import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/data/local_remote.dart';
import 'package:flutter_application_1/feature/presentation/bloc/main_page_cubit.dart';
import 'package:flutter_application_1/feature/presentation/screens/main_page.dart';
import 'package:flutter_application_1/feature/presentation/vmodel/theme_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MultiBlocProvider(
          providers: [
            BlocProvider<MainPageCubit>(
              create: (context) => MainPageCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            darkTheme: MyThemes.darkTheme,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            // ThemeData(
            //   textTheme: GoogleFonts.interTextTheme(
            //     Theme.of(context).textTheme,
            //   ),
            //   primarySwatch: Colors.blue,
            // ),
            home: const MainPage(),
          ),
        );
      },
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff1E1F25),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffffffff),
  );
}
