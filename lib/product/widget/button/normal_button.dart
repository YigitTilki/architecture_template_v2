import 'package:architecture_template/product/utility/constants/project_radius.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({required this.title, required this.onPressed, super.key});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: ProjectRadius.medium.value,
      onTap: onPressed,
      child: Text(title),
    );
  }
}
