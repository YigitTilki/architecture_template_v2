import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

mixin MountedMixin<T extends StatefulWidget> on State<T> {
  Future<void> safeOperation(AsyncCallback callBack) async {
    if (!mounted) return;
    await callBack.call();
  }
}
