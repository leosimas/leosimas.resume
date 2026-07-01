import 'package:flutter/material.dart';

class LocaleController extends ChangeNotifier {
  Locale _locale;

  LocaleController(this._locale);

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (_locale == locale) return;
    _locale = locale;
    notifyListeners();
  }
}

class LocaleProvider extends InheritedNotifier<LocaleController> {
  const LocaleProvider({
    super.key,
    required LocaleController controller,
    required super.child,
  }) : super(notifier: controller);

  static LocaleController of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<LocaleProvider>();
    assert(provider != null, 'LocaleProvider not found in widget tree');
    return provider!.notifier!;
  }

  static Locale localeOf(BuildContext context) => of(context).locale;
}
