import 'package:general_pos/core/component/dialog/design_dialog.dart';
import 'package:general_pos/core/component/image/design_image.dart';
import 'package:general_pos/core/component/widgets/dialog_confirmation_widget.dart';
import 'package:general_pos/core/constant/user/user_role.dart';
import 'package:general_pos/core/extensions/build_context_ext.dart';
import 'package:general_pos/core/theme/app_color.dart';
import 'package:general_pos/core/theme/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:general_pos/core/theme/app_radius.dart';
import 'package:general_pos/module/dashboard/dashboard_page.dart';

class DesignSideNavbar extends StatelessWidget {
  final String? username;
  final UserRole? role;
  final int currentIndex;
  final List<BottomNavBarItemData> bottomNavbar;
  final void Function(int index) onTap;
  final void Function()? onLogout;

  const DesignSideNavbar({
    super.key,
    this.username,
    this.role,
    required this.currentIndex,
    required this.bottomNavbar,
    required this.onTap,
    this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.paddingOf(context).top,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(right: BorderSide(color: AppColor.border)),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: AppPadding.large.add(
              EdgeInsets.only(right: AppPadding.lg),
            ),
            decoration: BoxDecoration(
              color: context.colorScheme.primary,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppRadius.xl),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  role == UserRole.admin
                      ? context.intl.role_admin
                      : context.intl.role_employee,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
                Text(
                  username ?? "",
                  style: context.textTheme.titleLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: AppPadding.large,
              child: Column(
                crossAxisAlignment: context.isTabletSize
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: bottomNavbar.map((item) {
                  return _DesignSideNavbarItemWidget(
                    item: item.item,
                    isSelected: currentIndex == item.destinationIndex,
                    onTap: () {
                      onTap(item.destinationIndex);
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: AppPadding.large,
            child: Column(
              children: [
                _DesignSideNavbarItemWidget(
                  isSelected: false,
                  color: context.colorScheme.error,
                  labelColor: context.colorScheme.error,
                  item: BottomNavigationBarItem(
                    icon: DesignImage(
                      SvgAssets(
                        "assets/icon/ic_logout.svg",
                        color: context.colorScheme.error,
                      ),
                      width: 24,
                      height: 24,
                    ),
                    label: context.intl.logout,
                  ),
                  onTap: () {
                    showLogoutConfirmation(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showLogoutConfirmation(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return DesignDialog(
          image: DialogConfirmationWidget(),
          title: context.intl.confirm_logout_title,
          subtitle: context.intl.confirm_logout_subtitle,
          negativeText: context.intl.cancel,
          positiveText: context.intl.logout,
          onNegative: () => Navigator.pop(context, false),
          onPositive: () => Navigator.pop(context, true),
        );
      },
    );

    if (result == true && context.mounted) {
      onLogout?.call();
    }
  }
}

class _DesignSideNavbarItemWidget extends StatelessWidget {
  final BottomNavigationBarItem item;
  final void Function()? onTap;
  final bool isSelected;
  final Color? color;
  final Color? labelColor;

  const _DesignSideNavbarItemWidget({
    required this.item,
    this.isSelected = false,
    this.onTap,
    this.color,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppRadius.medium,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.medium,
        child: Container(
          width: context.responsiveValue(
            desktop: 196,
            tablet: 96,
            mobile: context.screenWidth * 0.5,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: isSelected
              ? BoxDecoration(
                  color:
                      color?.withValues(alpha: 0.2) ??
                      context.colorScheme.primary.withValues(alpha: 0.2),
                  borderRadius: AppRadius.medium,
                )
              : null,
          child: Flex(
            direction: context.isTabletSize ? Axis.vertical : Axis.horizontal,
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.responsiveValue(
                  desktop: 28,
                  tablet: 26,
                  mobile: 24,
                ),
                width: context.responsiveValue(
                  desktop: 28,
                  tablet: 26,
                  mobile: 24,
                ),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: isSelected ? item.activeIcon : item.icon,
                ),
              ),
              Text(
                item.label ?? "",
                style: isSelected
                    ? context.textTheme.titleSmall?.copyWith(
                        color: color ?? context.colorScheme.primary,
                      )
                    : context.textTheme.bodyMedium?.copyWith(color: labelColor),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
