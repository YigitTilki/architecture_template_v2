import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class ProjectNetworkImage extends StatelessWidget {
  const ProjectNetworkImage({required this.url, super.key});

  final String? url;
  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      size: const Size(200, 200),
      loadingWidget: Assets.lottie.animZombie.lottie(
        package: 'gen',
      ),
    );
  }
}
