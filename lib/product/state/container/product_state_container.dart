import 'package:architecture_template/product/service/manager/index.dart';
import 'package:get_it/get_it.dart';

final class ProductContainer {
  const ProductContainer._();

  static final _getIt = GetIt.I;

  static void setup() {
    _getIt.registerSingleton(ProductNetworkManager.base());
  }

  static T read<T extends Object>() => _getIt<T>();
}
