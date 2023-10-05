import 'package:admin_panel/app/router/app_router.r.dart';
import 'package:admin_panel/features/auth/presentation/bloc/auth_bloc.f.dart';
import 'package:admin_panel/features/user/domain/bloc/user_bloc.f.dart';
import 'package:admin_panel/features/user/domain/service/user_service.dart';
import 'package:admin_panel/features/user/presentation/user_info.dart';
import 'package:admin_panel/sl/service_locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/components/side_bar/side_bar_controller.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SidebarController sidebarController = SidebarController(
    extended: true,
  );

  final _sectionsTitles = ['Devices', 'Login'];

  final _sectionsState = [false];

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colorScheme;
    final typography = appTheme.typography;
    final primaryColor = colorScheme.primary.primaryBlue900;

    const routes = [
      AppDevicesRoute(),
    ];

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthStateUnAuthorized || state is AuthStateError) {
            context.router.replace(const LoginRoute());
          }
        },
        child: BlocProvider(
          create: (context) => UserBloc(userService: sl.get<UserService>()),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, userState) {
              if (userState is UserStateAuthorized) {
                return AutoTabsRouter(
                  routes: routes,
                  homeIndex: 0,
                  builder: (context, child) {
                    return AppSideBar(
                      selectedIndex: context.tabsRouter.activeIndex,
                      appBar: AppBar(
                        actions: const [
                          Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: UserInfo(),
                          ),
                        ],
                        titleSpacing: 30,
                        title: Text(
                          _sectionsTitles[context.tabsRouter.activeIndex],
                        ),
                      ),
                      sidebarController: sidebarController,
                      headerBuilder: ({required expanded}) => expanded
                          ? Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 23,
                                bottom: 18,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          UiKitAssets.icons.sectionIcons.hbtLogo
                                              .svg(
                                            colorFilter: ColorFilter.mode(
                                              colorScheme
                                                  .primary.primaryBlue500,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Heatbit',
                                            style:
                                                typography.headerLarge.copyWith(
                                              color: colorScheme
                                                  .primary.primaryBlue500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          SystemIcons.arrowLeft,
                                          color: colorScheme
                                              .primary.primaryBlue500,
                                        ),
                                        onPressed:
                                            sidebarController.toggleExtended,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Administration',
                                    style: typography.bodySmall.copyWith(
                                      color: colorScheme.neutral.neutralGray200,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: IconButton(
                                icon: UiKitAssets.icons.sectionIcons.burger.svg(
                                  colorFilter: ColorFilter.mode(
                                    colorScheme.primary.primaryBlue500,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                onPressed: sidebarController.toggleExtended,
                              ),
                            ),
                      itemsMenu: ({
                        required expanded,
                        required selectedIndex,
                      }) =>
                          [
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    SideMenuExpansionTile(
                                      initiallyExpanded: _sectionsState[0],
                                      onExpansionChanged: (value) {
                                        _sectionsState[0] = value;
                                      },
                                      isExpanded: expanded,
                                      maintainState: true,
                                      iconColor: primaryColor,
                                      leading: UiKitAssets
                                          .icons.sectionIcons.admin
                                          .svg(
                                        width: 40,
                                        height: 40,
                                      ),
                                      textColor: primaryColor,
                                      title: Text(_sectionsTitles[0]),
                                      children: [
                                        AppSideBarItem(
                                          isExpanded: expanded,
                                          isSelected: selectedIndex == 0,
                                          left: UiKitAssets
                                              .icons.sectionIcons.devices
                                              .svg(),
                                          title: const Text('Devices'),
                                          itemsCallback: () {
                                            context.router.navigate(
                                              const AppDevicesRoute(),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      content: child,
                    );
                  },
                );
              }
              if (userState is UserStateLoading) {
                return const Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
