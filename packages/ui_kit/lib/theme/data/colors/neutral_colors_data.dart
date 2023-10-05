import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NeutralColorsData extends Equatable {
  const NeutralColorsData({
    required this.neutralGray200,
    required this.neutralGray100,
  });

  factory NeutralColorsData.light() => const NeutralColorsData(
        neutralGray200: _neutralGray200Light,
        neutralGray100: _neutralGray100Light,
      );

  factory NeutralColorsData.dark() => const NeutralColorsData(
        neutralGray200: _neutralGray200Dark,
        neutralGray100: _neutralGray100Dark,
      );

  final Color neutralGray200;
  final Color neutralGray100;

  static const Color _neutralGray200Light = Color(0xffA7A7A7);
  static const Color _neutralGray100Light = Color(0xffDCDBDB);

  static const Color _neutralGray200Dark = Color(0xffA7A7A7);
  static const Color _neutralGray100Dark = Color(0xffDCDBDB);

  @override
  List<Object?> get props => [
        neutralGray200,
        neutralGray100,
      ];
}
