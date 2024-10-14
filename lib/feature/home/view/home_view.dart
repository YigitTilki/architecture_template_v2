import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/widget/project_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SuccessDialog.show(title: 'title', context: context);
        },
      ),
      appBar: const _HomeAppBar(),
      body: Center(
        child: Column(
          children: [
            AdaptAllView(
              phone: Text(
                ''.ext.version,
                style: context.general.textTheme.bodySmall,
              ),
              tablet: Text(
                ''.ext.version,
                style: context.general.textTheme.bodyLarge,
              ),
              desktop: Text(
                ''.ext.version,
                style: context.general.textTheme.headlineLarge,
              ),
            ),
            const ProjectNetworkImage(url: 'https://picsum.photos/200/300'),
            /* ElevatedButton(
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
            ), */
          ],
        ),
      ),
    );
  }
}
