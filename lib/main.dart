import 'package:clean_architecture_tdd/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: colorScheme,
          primaryColor: colorScheme.primary,
          accentColor: colorScheme.secondary,
          backgroundColor: colorScheme.background,

        ),
        title: 'Number Trivia',
        home: NumberTriviaPage());
  }
}

final ColorScheme colorScheme = ColorScheme.light(
    primary: Color(0xFF111111),
    secondary: Color(0xFFE31C25),
    primaryVariant: Color(0xFF161616),
    secondaryVariant: Color(0xFFBB000E),
    surface: Color(0xFFFFFFFF),
    background: Color(0xFF1C1C1C),
    error: Color(0xFFE5AA17),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    onError: Color(0xFFFFFFFF),
    onBackground: Color(0xFF000000),
    brightness: Brightness.light);
