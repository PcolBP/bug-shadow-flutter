import 'package:flutter/material.dart';

class Themes {
  static const Color mainColor = Colors.red;
  static const Brightness brightness = Brightness.light;
  static const RoundedRectangleBorder _shapeRadiusAll = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );

  static ThemeData get light => ThemeData(
        shadowColor: Colors.black,
        splashColor: mainColor,
        primaryColor: mainColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          brightness: brightness,
          accentColor: Colors.white38,
          backgroundColor: Colors.white,
        ),
        primaryColorLight: mainColor,
        primaryColorDark: mainColor,
        backgroundColor: Colors.white,
        tooltipTheme: const TooltipThemeData(
          preferBelow: false,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => mainColor,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => mainColor),
          ),
        ),
        brightness: brightness,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        snackBarTheme: const SnackBarThemeData(
          elevation: 10,
        ),
        cardTheme: const CardTheme(
          elevation: 15,
          shape: _shapeRadiusAll,
          clipBehavior: Clip.antiAlias,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: mainColor,
          textTheme: ButtonTextTheme.primary,
          shape: _shapeRadiusAll,
        ),
        /*ButtonTheme.of(context).copyWith(
          buttonColor: mainColor,
          textTheme: ButtonTextTheme.primary,
          shape: _shapeRadiusAll,
        ),*/
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: mainColor,
        ),
      );
}
