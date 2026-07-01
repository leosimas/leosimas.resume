import 'package:flutter/material.dart';
import 'package:leosimas/locale/locale_controller.dart';

class _LanguageOption {
  final Locale locale;
  final String flag;
  final String label;

  const _LanguageOption({required this.locale, required this.flag, required this.label});
}

const _languages = [
  _LanguageOption(locale: Locale('en'), flag: '🇺🇸', label: 'English'),
  _LanguageOption(locale: Locale('pt'), flag: '🇧🇷', label: 'Português'),
];

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LocaleProvider.of(context);
    final currentLocale = controller.locale;
    final current = _languages.firstWhere(
      (l) => l.locale.languageCode == currentLocale.languageCode,
      orElse: () => _languages.first,
    );

    return PopupMenuButton<Locale>(
      tooltip: '',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(current.flag, style: const TextStyle(fontSize: 24)),
      ),
      itemBuilder: (_) => _languages
          .map(
            (option) => PopupMenuItem<Locale>(
              value: option.locale,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(option.flag, style: const TextStyle(fontSize: 20)),
                  const SizedBox(width: 8),
                  Text(option.label),
                ],
              ),
            ),
          )
          .toList(),
      onSelected: (locale) => controller.setLocale(locale),
    );
  }
}
