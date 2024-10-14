import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template/product/service/manager/product_service_manager.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  late final ProductNetworkManager productNetworkManager;
  late final ProductNetworkErrorManager productNetworkErrorManager;

  @override
  void initState() {
    super.initState();
    productNetworkManager = ProductNetworkManager.base();

    productNetworkManager.listenErrorState(
      onErrorStatus: (value) {
        productNetworkErrorManager.handleError(value);
      },
    );
  }
}
