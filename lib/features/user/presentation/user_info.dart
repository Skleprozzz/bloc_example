import 'package:admin_panel/features/auth/presentation/bloc/auth_bloc.f.dart';
import 'package:admin_panel/features/user/domain/bloc/user_bloc.f.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/ui_kit.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.materialTheme.copyWith(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: Builder(
        builder: (context) {
          return MouseRegion(
            onEnter: (event) {
              _onMouseEvent(context);
            },
            child: InkWell(
              onTap: () {},
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserStateAuthorized) {
                    return Row(
                      children: [
                        UiKitAssets.icons.sectionIcons.admin.svg(),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          state.phone,
                          style: context.typography.headerSmall.copyWith(
                            color: context.colorScheme.primary.primaryBlue500,
                          ),
                        ),
                      ],
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _onMouseEvent(BuildContext context) {
    // ignore: avoid-non-null-assertion
    final widgetBox = context.findRenderObject()! as RenderBox;

    final offset = widgetBox.localToGlobal(Offset.zero);
    final left = offset.dx;
    final top = offset.dy + widgetBox.size.height;
    final right = left + widgetBox.size.width;
    showMenu(
      position: RelativeRect.fromLTRB(left, top, right, 0),
      constraints: const BoxConstraints(
        minWidth: 250,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      context: context,
      items: [
        PopupMenuItem<Widget>(
          child: AppButton.warning(
            center: const Text('Logout'),
            onPressed: () {
              context.read<AuthBloc>().add(const Logout());
            },
            type: AppButtonType.fixedSmall,
          ),
        ),
      ],
    );
  }
}
