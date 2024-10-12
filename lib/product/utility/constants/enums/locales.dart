import 'package:flutter/material.dart';

enum Locales {
  en(Locale('en', 'US')),
  tr(Locale('tr', 'TR'));

  const Locales(this.locale);
  final Locale locale;
}
