import 'package:architecture_template/product/state/base/base_cubit.dart';
import 'package:architecture_template/product/state/view_model/product_state.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends BaseCubit<ProductState> {
  ProductViewModel() : super(const ProductState());

  void changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
