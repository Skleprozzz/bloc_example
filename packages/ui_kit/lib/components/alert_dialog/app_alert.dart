import 'package:flutter/material.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/ui_kit.dart';

class AppAlert extends StatelessWidget {
  const AppAlert({
    this.alertTitle,
    this.alertDetails,
    this.callbackPrimary,
    this.callbackSecondary,
    this.buttonTextPrimary,
    this.buttonTextSecondary,
    super.key,
  });

  final String? alertTitle;
  final String? alertDetails;
  final String? buttonTextPrimary;
  final String? buttonTextSecondary;
  final void Function()? callbackPrimary;
  final void Function()? callbackSecondary;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colorScheme = theme.colorScheme;
    final typography = theme.typography;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      actionsPadding: const EdgeInsets.only(bottom: 30, right: 30),
      contentPadding: const EdgeInsets.all(30),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.abc),
              const SizedBox(
                width: 10,
              ),
              Text(
                alertTitle ?? 'Error',
                style: typography.headerMedium
                    .copyWith(color: colorScheme.background.onSurface),
              ),
            ],
          ),
          InkWell(
            child: const Icon(SystemIcons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              SizedBox(
                width: 330,
                child: Text(
                  alertDetails ?? 'Unknown error',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: typography.bodyMedium
                      .copyWith(color: colorScheme.background.onSurface),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 120),
          child: AppButton.outline(
            center: Text(buttonTextSecondary ?? 'Cancel'),
            type: AppButtonType.fixedSmall,
            onPressed: callbackSecondary,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 120),
          child: AppButton.secondary(
            center: Text(buttonTextPrimary ?? 'Ok'),
            type: AppButtonType.fixedSmall,
            onPressed: callbackPrimary,
          ),
        ),
      ],
    );
  }
}
