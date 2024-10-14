import 'package:flutter/material.dart';

mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  bool get isLoading => _isLoadingNotifier.value;

  void changeLoading({bool? isLoading}) {
    if (isLoading != null) _isLoadingNotifier.value = isLoading;

    _isLoadingNotifier.value = !_isLoadingNotifier.value;
  }
}
