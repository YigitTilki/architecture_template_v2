import 'package:architecture_template/product/service/manager/index.dart';
import 'package:architecture_template/product/state/view_model/product_view_model.dart';
import 'package:get_it/get_it.dart';

final class ProductContainer {
  const ProductContainer._();

  static final _getIt = GetIt.I;

  static void setup() {
    _getIt
      ..registerSingleton(ProductNetworkManager.base())
      ..registerLazySingleton<ProductViewModel>(ProductViewModel.new);
  }

  static T read<T extends Object>() => _getIt<T>();
}
