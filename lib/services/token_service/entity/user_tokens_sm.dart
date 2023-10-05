import 'package:equatable/equatable.dart';

class UserTokensSM extends Equatable {
  const UserTokensSM({
    required this.access,
    required this.refresh,
  });

  final String access;
  final String refresh;

  @override
  List<Object> get props => <Object>[
        access,
        refresh,
      ];
}
