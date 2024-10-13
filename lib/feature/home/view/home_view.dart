import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/widget/project_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

part 'widgets/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Center(
        child: Column(
          children: [
            const ProjectNetworkImage(url: 'https://picsum.photos/200/300'),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppEnvironmentItems.baseUrl.value),
            ),
            const Text('Change Language'),
            ElevatedButton(
              onPressed: () {
                context.router.push(HomeDetailRoute(id: '2'));
                /* ProductLocalization.updateLanguage(
                  value: Locales.en,
                  context: context,
                ); */
              },
              child: Text(
                LocaleKeys.general_button_save,
                style: context.general.textTheme.bodySmall,
              ).tr(),
            ),
          ],
        ),
      ),
    );
  }
}
