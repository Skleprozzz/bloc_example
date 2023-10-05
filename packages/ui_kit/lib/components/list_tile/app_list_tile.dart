import 'package:flutter/material.dart';
import 'package:ui_kit/components/list_tile/list_tile_type.dart';
import 'package:ui_kit/theme/app_theme.dart';

class AppListTile extends StatelessWidget {
  const AppListTile._({
    required this.title,
    required this.type,
    required this.height,
    required this.vertical,
    required this.horizontal,
    this.left,
    this.right,
    this.callback,
  });

  factory AppListTile.fixedLarge({
    required Widget title,
    VoidCallback? callback,
    Widget? left,
    Widget? right,
  }) =>
      AppListTile._(
        callback: callback,
        left: left,
        right: right,
        title: title,
        type: ListTileType.fixedLarge,
        height: 47,
        vertical: 11,
        horizontal: 15,
      );

  factory AppListTile.fixedSmall({
    required Widget title,
    VoidCallback? callback,
    Widget? left,
    Widget? right,
  }) =>
      AppListTile._(
        callback: callback,
        left: left,
        right: right,
        title: title,
        type: ListTileType.fixedSmall,
        height: 36,
        vertical: 6,
        horizontal: 10,
      );

  final VoidCallback? callback;
  final Widget title;

  final Widget? left;
  final Widget? right;
  final ListTileType type;
  final double height;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;
    final typography = appTheme.typography;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 240,
        maxHeight: height,
      ),
      child: InkWell(
        hoverColor: colorScheme.background.onPrimary,
        onTap: callback,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: vertical,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  if (left != null) ...[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: left,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                  if (title is Text)
                    Text(
                      (title as Text).data ?? '',
                      style: typography.headerSmall
                          .copyWith(color: colorScheme.background.onSurface),
                    )
                  else
                    Align(child: title),
                ],
              ),
              if (right != null)
                Align(
                  alignment: Alignment.centerRight,
                  child: right,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

//   return Column(
//     children: [
//       ListTile(
//         contentPadding: EdgeInsets.zero,
//         horizontalTitleGap: 0,
//         onTap: callback,
//         leading: SizedBox(
//           height: 46,
//           width: 34,
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: icon.svg(
//               width: 24,
//               height: 24,
//               package: 'ui_kit',
//               colorFilter: ColorFilter.mode(
//                 theme.colorScheme.accent.primary,
//                 BlendMode.srcIn,
//               ),
//             ),
//           ),
//         ),
//         title: Text(
//           title,
//           style: theme.typography.headline6Bold.copyWith(
//             color: colorScheme.neutral.primary,
//           ),
//         ),
//         subtitle: Text(
//           subtitle.isNotEmpty
//               ? subtitle.reduce(
//                   (value, element) => '$value, $element',
//                 )
//               : '',
//           style: isTapable
//               ? theme.typography.subhead14Bold
//                   .copyWith(color: colorScheme.accent.primary)
//               : theme.typography.subhead14Regular.copyWith(
//                   color: colorScheme.neutral.secondary,
//                 ),
//         ),
//   trailing: isTapable
//       ? SizedBox.fromSize(
//           size: const Size(46, 46),
//           child: Align(
//             alignment: Alignment.centerRight,
//             // child: Icon(
//             //   Icons.arrow_forward_ios_rounded,
//             //   size: 12,
//             //   color: colorScheme.neutral.primary,
//             // ),
//             child: UiKitAssets.icons.arrowRight.svg(
//               width: theme.icons.sizes.size12,
//               height: theme.icons.sizes.size12,
//               package: 'ui_kit',
//               colorFilter: ColorFilter.mode(
//                 theme.colorScheme.neutral.primary,
//                 BlendMode.srcIn,
//               ),
//             ),
//           ),
//         )
//       : null,
// ),
//       Divider(
//         color: colorScheme.neutral.tertiaryVariant,
//         height: 1,
//       ),
//     ],
//   );
// }
