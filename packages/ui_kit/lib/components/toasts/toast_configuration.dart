import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';

export 'package:fluttertoast/fluttertoast.dart';

class ToastConfiguration extends Equatable {
  ToastConfiguration.alert({
    required this.appTheme,
    this.toastGravity = ToastGravity.BOTTOM,
  })  : _color = appTheme.colorScheme.error.additionallyFailed,
        _icon = Icon(
          Icons.warning_amber,
          color: appTheme.colorScheme.background.background,
        );

  ToastConfiguration.warning({
    required this.appTheme,
    this.toastGravity = ToastGravity.BOTTOM,
  })  : _color = appTheme.colorScheme.neutral.neutralGray200,
        _icon = Icon(
          Icons.announcement_outlined,
          color: appTheme.colorScheme.background.background,
        );

  ToastConfiguration.info({
    required this.appTheme,
    this.toastGravity = ToastGravity.BOTTOM,
  })  : _color = appTheme.colorScheme.primary.primaryBlue500,
        _icon = Icon(
          Icons.info_outline,
          color: appTheme.colorScheme.background.background,
        );

  ToastConfiguration.success({
    required this.appTheme,
    this.toastGravity = ToastGravity.BOTTOM,
  })  : _color = appTheme.colorScheme.success.additionallySuccess,
        _icon = Icon(
          Icons.check,
          color: appTheme.colorScheme.background.background,
        );

  final Widget _icon;
  final AppThemeData appTheme;
  final ToastGravity toastGravity;
  final Color _color;

  Color get color => _color;
  Widget get icon => _icon;

  @override
  List<Object?> get props => [
        _color,
        _icon,
        appTheme,
      ];
}
