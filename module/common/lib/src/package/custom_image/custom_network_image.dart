import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    this.imageUrl,
    super.key,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  final String? imageUrl;
  final Widget? emptyWidget;

  final Widget? loadingWidget;

  final CustomMemCache memCache;

  final BoxFit boxFit;

  final Size? size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return emptyWidget ?? const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      errorWidget: (context, url, error) => emptyWidget ?? const SizedBox(),
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error: $value');
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
    );
  }
}
