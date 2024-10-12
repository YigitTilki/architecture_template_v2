import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter/material.dart';

part 'widgets/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return const _HomeAppBar();
  }
}
