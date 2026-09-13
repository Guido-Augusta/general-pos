import 'package:general_pos/core/component/image/design_image_picker.dart';
import 'package:general_pos/core/component/widgets/design_theme_switch.dart';
import 'package:general_pos/core/theme/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExamplePage extends StatelessWidget {
  const ImagePickerExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Example"),
        actions: [
          DesignThemeSwitch(),
          const SizedBox(width: 24),
        ],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.largeHorizontal,
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesignImagePicker(
              imageSources: [ImageSource.gallery],
              onImagePicked: (image) {
                debugPrint("TAGGS : ${image.path}");
              },
            ),
            DesignImagePicker(
              height: 120,
              width: 120,
              imageSources: [ImageSource.gallery],
              onImagePicked: (image) {
                debugPrint("TAGGS : ${image.path}");
              },
            ),
            DesignImagePicker(
              height: 120,
              width: 120,
              borderRadius: BorderRadius.circular(120),
              imageSources: [ImageSource.gallery],
              onImagePicked: (image) {
                debugPrint("TAGGS : ${image.path}");
              },
            ),
            DesignImagePicker(
              height: 120,
              width: 120,
              imageSources: [ImageSource.gallery, ImageSource.camera],
              borderRadius: BorderRadius.circular(120),
              defaultImage: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.person,
                  size: 20,
                ),
              ),
              onImagePicked: (image) {
                debugPrint("TAGGS : ${image.path}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
