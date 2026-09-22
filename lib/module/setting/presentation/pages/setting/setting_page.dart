import 'package:flutter/material.dart';
import 'package:general_pos/core/component/list_tile/design_list_tile.dart';
import 'package:general_pos/core/component/widgets/design_language_picker.dart';
import 'package:general_pos/core/component/widgets/design_theme_switch.dart';
import 'package:general_pos/core/extensions/build_context_ext.dart';
import 'package:general_pos/core/theme/app_padding.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingUI();
  }
}

class SettingUI extends StatefulWidget {
  const SettingUI({super.key});

  @override
  State<SettingUI> createState() => _SettingUIState();
}

class _SettingUIState extends State<SettingUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.responsiveValue(
        desktop: AppBar(
          title: Text(context.intl.product_setting),
          centerTitle: true,
        ),
        tablet: AppBar(
          title: Text(context.intl.product_setting),
          centerTitle: true,
        ),
        mobile: null,
      ),
      body: SingleChildScrollView(
        padding: AppPadding.large,
        child: Column(
          spacing: 8,
          children: [
            DesignListTile(
              title: Text(context.intl.change_language),
              trailing: DesignLanguagePicker(),
            ),
            DesignListTile(
              title: Text(context.intl.dark_mode),
              trailing: DesignThemeSwitch(),
            ),
          ],
        ),
      ),
    );
  }
}
