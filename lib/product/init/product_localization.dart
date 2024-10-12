import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
final class ProductLocalization extends EasyLocalization {
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedItems,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  static final List<Locale> _supportedItems = [
    Locales.en.locale,
    Locales.tr.locale,
  ];

  static const String _translationPath = 'asset/translations';

  static Future<void> updateLanguage({
    required Locales value,
    required BuildContext context,
  }) =>
      context.setLocale(value.locale);
}
