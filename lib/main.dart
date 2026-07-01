import 'package:flutter/material.dart';
import 'package:leosimas/locale/locale_controller.dart';
import 'package:leosimas/pages/main/main.page.dart';

void main() {
  runApp(MyApp());
}

Locale _detectLocale() {
  final lang = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
  return lang == 'pt' ? const Locale('pt') : const Locale('en');
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _maxWidth = 800.0;

  late final LocaleController _localeController;

  @override
  void initState() {
    super.initState();
    _localeController = LocaleController(_detectLocale());
    _localeController.addListener(_onLocaleChanged);
  }

  @override
  void dispose() {
    _localeController.removeListener(_onLocaleChanged);
    _localeController.dispose();
    super.dispose();
  }

  void _onLocaleChanged() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return LocaleProvider(
      controller: _localeController,
      child: MaterialApp(
        title: 'Leonardo Simas - Mobile Developer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SafeArea(
          top: false,
          bottom: true,
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > _maxWidth) {
                final margin = (constraints.maxWidth - _maxWidth) / 2;
                return Container(
                  padding: EdgeInsets.only(left: margin, right: margin),
                  color: Colors.black45,
                  child: MainPage(),
                );
              }
              return MainPage();
            },
          ),
        ),
      ),
    );
  }
}
