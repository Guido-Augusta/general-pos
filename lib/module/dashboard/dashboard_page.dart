import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_pos/core/component/image/design_image.dart';
import 'package:general_pos/core/component/navbar/design_side_navbar.dart';
import 'package:general_pos/core/constant/user/user_role.dart';
import 'package:general_pos/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:general_pos/core/route/app_route_name.dart';
import 'package:general_pos/core/utils/app_utils.dart';
import 'package:general_pos/module/dashboard/cubit/dashboard_cubit.dart';
import 'package:go_router/go_router.dart';

class BottomNavBarItemData {
  final int destinationIndex;
  final String destinationRoute;
  final List<UserRole> roleAccess;
  final BottomNavigationBarItem item;

  BottomNavBarItemData({
    required this.destinationIndex,
    required this.destinationRoute,
    this.roleAccess = const [],
    required this.item,
  });
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, required this.state, required this.child});

  final GoRouterState state;
  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(di(), di())..getLoginSession(),
      child: DashboardUI(state: state, child: child),
    );
  }
}

class DashboardUI extends StatefulWidget {
  const DashboardUI({super.key, required this.state, required this.child});

  final StatefulNavigationShell child;
  final GoRouterState state;

  @override
  State<DashboardUI> createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  BottomNavigationBarItem _buildBottomNavigationBar(
    String inactiveIcon,
    String activeIcon,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: DesignImage(
        SvgAssets(inactiveIcon, color: context.colorScheme.inverseSurface),
        width: 24,
        height: 24,
      ),
      activeIcon: DesignImage(
        SvgAssets(activeIcon, color: context.colorScheme.primary),
        width: 24,
        height: 24,
      ),
      label: label,
    );
  }

  List<BottomNavBarItemData> get bottomNavBarItems => [
    BottomNavBarItemData(
      destinationIndex: 0,
      destinationRoute: "/home",
      roleAccess: [UserRole.admin, UserRole.employee],
      item: _buildBottomNavigationBar(
        "assets/icon/ic_dashboard.svg",
        "assets/icon/ic_dashboard_active.svg",
        context.intl.product_dashboard,
      ),
    ),
    BottomNavBarItemData(
      destinationIndex: 1,
      destinationRoute: "/orders",
      roleAccess: [UserRole.admin, UserRole.employee],
      item: _buildBottomNavigationBar(
        "assets/icon/ic_shopping.svg",
        "assets/icon/ic_shopping_active.svg",
        context.intl.product_orders,
      ),
    ),
    BottomNavBarItemData(
      destinationIndex: 2,
      destinationRoute: "/transaction",
      roleAccess: [UserRole.admin],
      item: _buildBottomNavigationBar(
        "assets/icon/ic_transaction.svg",
        "assets/icon/ic_transaction_active.svg",
        context.intl.product_transaction,
      ),
    ),
    BottomNavBarItemData(
      destinationIndex: 3,
      destinationRoute: "/store",
      roleAccess: [UserRole.admin],
      item: _buildBottomNavigationBar(
        "assets/icon/ic_store.svg",
        "assets/icon/ic_store_active.svg",
        context.intl.product_store,
      ),
    ),
    BottomNavBarItemData(
      destinationIndex: 4,
      destinationRoute: "/users",
      roleAccess: [UserRole.admin, UserRole.employee],
      item: _buildBottomNavigationBar(
        "assets/icon/ic_users.svg",
        "assets/icon/ic_users_active.svg",
        context.intl.product_users,
      ),
    ),
    BottomNavBarItemData(
      destinationIndex: 5,
      destinationRoute: "/setting",
      roleAccess: [UserRole.admin, UserRole.employee],
      item: _buildBottomNavigationBar(
        "assets/icon/ic_setting.svg",
        "assets/icon/ic_setting_active.svg",
        context.intl.product_setting,
      ),
    ),
  ];

  // check for root route
  // /home => true
  // /home/detail => false
  bool get rootRoute {
    return widget.state.uri.pathSegments.length == 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: context.responsiveValue(
        desktop: null,
        tablet: null,
        mobile: rootRoute
            ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  icon: Icon(Icons.menu_rounded),
                ),
                title: Text(
                  bottomNavBarItems[widget.child.currentIndex].item.label ?? "",
                ),
              )
            : null,
      ),
      drawer: context.responsiveValue(
        desktop: null,
        tablet: null,
        mobile: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return SizedBox(
              width: context.screenWidth * 0.6,
              child: DesignSideNavbar(
                role: state.user?.role,
                username: state.user?.username ?? "-",
                currentIndex: widget.child.currentIndex,
                bottomNavbar: bottomNavBarItems,
                onTap: onItemClicked,
                onLogout: onLogout,
              ),
            );
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          if (!context.isMobileSize)
            BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return DesignSideNavbar(
                  role: state.user?.role,
                  username: state.user?.username ?? "-",
                  currentIndex: widget.child.currentIndex,
                  bottomNavbar: bottomNavBarItems,
                  onTap: onItemClicked,
                  onLogout: onLogout,
                );
              },
            ),
          Flexible(child: widget.child),
        ],
      ),
    );
  }

  void onItemClicked(int index) {
    widget.child.goBranch(
      index,
      initialLocation: index == widget.child.currentIndex,
    );
  }

  void onLogout() async {
    await context.read<DashboardCubit>().logout();
    if (!mounted) return;

    context.goNamed(AppRouteName.login);
  }
}
