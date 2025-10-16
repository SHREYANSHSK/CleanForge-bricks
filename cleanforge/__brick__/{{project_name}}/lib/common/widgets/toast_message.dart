import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_text_styles.dart';
import 'package:toastification/toastification.dart';

ToastificationItem showToastNotification({
  required String title,
  required String body,
  ToastificationType? messageType,
}) {
  return toastification.show(
    context: Get.context,
    title: Text(title, style: AppTextStyles.interMediumBold),
    description: Text(body, style: AppTextStyles.interNormalRegular),
    autoCloseDuration: const Duration(seconds: 5),
    closeButton: ToastCloseButton(showType: CloseButtonShowType.onHover),
    dragToClose: true,
    style: ToastificationStyle.fillColored,
    pauseOnHover: true,
    showProgressBar: true,
    backgroundColor: AppColors.white,
    type: messageType ?? ToastificationType.info,
    alignment: Alignment.topRight,
  );
}
