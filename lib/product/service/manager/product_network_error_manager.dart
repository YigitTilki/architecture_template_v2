import 'dart:io';

import 'package:flutter/widgets.dart';

final class ProductNetworkErrorManager {
  ProductNetworkErrorManager(this.context);
  final BuildContext context;

  void handleError(int value) {
    if (value == HttpStatus.unauthorized) {}
  }
}
