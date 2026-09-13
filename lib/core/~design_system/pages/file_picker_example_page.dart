import 'package:general_pos/core/component/file_picker/design_file_picker.dart';
import 'package:general_pos/core/component/widgets/design_theme_switch.dart';
import 'package:general_pos/core/theme/app_padding.dart';
import 'package:flutter/material.dart';

class FilePickerExamplePage extends StatelessWidget {
  const FilePickerExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File Picker Example"),
        actions: [DesignThemeSwitch(), const SizedBox(width: 24)],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.largeHorizontal,
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesignSingleFilePicker(
              onFilePicked: (file) {
                debugPrint("TAGGS : ${file.path}");
              },
            ),
            DesignSingleFilePicker(
              height: 120,
              width: 120,
              onFilePicked: (file) {
                debugPrint("TAGGS : ${file.path}");
              },
            ),
            DesignSingleFilePicker(
              height: 120,
              width: 120,
              borderRadius: BorderRadius.circular(120),
              onFilePicked: (file) {
                debugPrint("TAGGS : ${file.path}");
              },
            ),
            DesignSingleFilePicker(
              height: 120,
              width: 120,
              borderRadius: BorderRadius.circular(120),
              defaultWidget: Container(
                decoration: BoxDecoration(color: Colors.amber),
                alignment: Alignment.center,
                child: Icon(Icons.upload, size: 20),
              ),
              onFilePicked: (file) {
                debugPrint("TAGGS : ${file.path}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
