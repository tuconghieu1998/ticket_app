import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/app_constant.dart';

class ImageHelper {
  static Widget loadFromAsset(String imageFilePath,
      {double? width,
      double? height,
      BorderRadius? radius,
      BoxFit? fit,
      Color? tintColor,
      Alignment? alignment}) {
    return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: Image.asset(
          imageFilePath,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          color: tintColor,
          alignment: alignment ?? Alignment.center,
        ));
  }

  static Widget loadFromUrl(String imageUrl,
      {double? width,
      double? height,
      BorderRadius? radius,
      BoxFit? fit,
      Color? tintColor,
      Alignment? alignment}) {
    return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              color: AppColor.mainColor,
              value: progress.progress,
            ),
          ),
          imageUrl: imageUrl,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          color: tintColor,
          alignment: alignment ?? Alignment.center,
        ));
  }

  static String getImgUrl(String imgName, {String imgSize = "original"}) {
    return "${AppConstant.urlImage}/$imgSize$imgName";
  }
}
