import 'package:general_pos/core/component/sheet/responsive_sheet.dart';
import 'package:general_pos/core/extensions/build_context_ext.dart';
import 'package:general_pos/core/theme/app_color.dart';
import 'package:general_pos/core/theme/app_radius.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sheet/responsive_sheet.dart';

class DesignImagePicker extends StatefulWidget {
  const DesignImagePicker({
    super.key,
    this.image,
    this.defaultImage,
    this.width,
    this.height,
    this.fit,
    this.borderRadius,
    this.imageSources = ImageSource.values,
    this.onImagePicked,
  });

  final Widget? image;
  final Widget? defaultImage;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius? borderRadius;
  final List<ImageSource> imageSources;
  final void Function(XFile image)? onImagePicked;

  @override
  State<DesignImagePicker> createState() => _DesignImagePickerState();
}

class _DesignImagePickerState extends State<DesignImagePicker> {
  final _imagePicker = ImagePicker();

  // using 'Uint8List' for web support
  final _imageNotifier = ValueNotifier<Uint8List?>(null);

  @override
  void dispose() {
    _imageNotifier.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    if (widget.imageSources.isEmpty) return;

    ImageSource source = widget.imageSources.first;
    if (kIsWeb) {
      source = ImageSource.gallery;
    } else if (widget.imageSources.length > 1) {
      final imageSource = await showDesignImageSourcePickerSheet(context);
      if (imageSource == null) return;

      source = imageSource;
    }

    final file = await _imagePicker.pickImage(source: source, imageQuality: 70);
    if (file == null) return;

    final bytes = await file.readAsBytes();
    _imageNotifier.value = bytes;

    widget.onImagePicked?.call(file);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pickImage,
      borderRadius: widget.borderRadius ?? BorderRadius.zero,
      child: SizedBox(
        width: widget.width ?? 64,
        height: widget.height ?? 64,
        child: ClipRRect(
          borderRadius: widget.borderRadius ?? BorderRadius.zero,
          child: ValueListenableBuilder<Uint8List?>(
            valueListenable: _imageNotifier,
            builder: (context, bytes, _) {
              // Selected image (highest priority)
              if (bytes != null) {
                return Image.memory(
                  bytes,
                  fit: widget.fit ?? BoxFit.cover,
                  width: widget.width ?? 64,
                  height: widget.height ?? 64,
                );
              }

              // External image widget
              if (widget.image != null) {
                return widget.image!;
              }

              // Default image
              if (widget.defaultImage != null) {
                return widget.defaultImage!;
              }

              // Fallback UI
              return Container(
                decoration: BoxDecoration(
                  color: AppColor.neutral[700],
                  borderRadius: widget.borderRadius ?? BorderRadius.zero,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.image_outlined,
                  size: 20,
                  color: AppColor.blackGrey,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

Future<ImageSource?> showDesignImageSourcePickerSheet(
  BuildContext context,
) async {
  return showResponsiveBottomSheet<ImageSource?>(
    context,
    typeBuilder: (context) {
      return context.responsiveValue(
        desktop: ResponsiveSheetType.dialog,
        tablet: ResponsiveSheetType.dialog,
        mobile: ResponsiveSheetType.sheet,
      );
    },
    styleBuilder: (context, type) {
      return ResponsiveSheetStyle(borderRadius: AppRadius.large);
    },
    builder: (context, type) {
      return _DesignImageSourceWidget(type: type);
    },
  );
}

class _DesignImageSourceWidget extends StatelessWidget {
  const _DesignImageSourceWidget({required this.type});

  final ResponsiveSheetType type;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSheet(
      type: type,
      title: context.intl.select_image,
      child: Row(
        spacing: 24,
        mainAxisSize: MainAxisSize.min,
        children: ImageSource.values.map((source) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context, source);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColor.neutral),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      source == ImageSource.gallery
                          ? Icons.photo_library_outlined
                          : Icons.camera_alt_outlined,
                    ),
                    Text(
                      source == ImageSource.gallery
                          ? context.intl.gallery
                          : context.intl.camera,
                      style: context.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
