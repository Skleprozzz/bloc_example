import 'package:flutter/material.dart';
import 'package:ui_kit/components/toasts/toast_configuration.dart';
import 'package:ui_kit/theme/app_theme.dart';

export 'toast_configuration.dart';

void showAppToast({
  required BuildContext context,
  required String infoText,
  required ToastConfiguration toastConfiguration,
}) {
  final fToast = FToast()..init(context);
  final theme = context.theme;
  final width = MediaQuery.sizeOf(context).width / 4;
  fToast.showToast(
    gravity: toastConfiguration.toastGravity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: width > 350 ? width : 350,
        height: 56,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: toastConfiguration.color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 16,
              top: 4,
              bottom: 4,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 48,
                  width: 36,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: toastConfiguration.icon,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    infoText,
                    maxLines: 2,
                    style: theme.typography.bodyMedium.copyWith(
                      color: theme.colorScheme.background.surface,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
