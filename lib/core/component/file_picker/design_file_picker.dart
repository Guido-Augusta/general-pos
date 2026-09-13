import 'package:general_pos/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class DesignSingleFilePicker extends StatefulWidget {
  const DesignSingleFilePicker({
    super.key,
    this.file,
    this.defaultWidget,
    this.width,
    this.height,
    this.borderRadius,
    this.onFilePicked,
    this.allowedExtensions,
  });

  final Widget? file;
  final Widget? defaultWidget;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final List<String>? allowedExtensions;

  final void Function(XFile file)? onFilePicked;

  @override
  State<DesignSingleFilePicker> createState() => _DesignSingleFilePickerState();
}

class _DesignSingleFilePickerState extends State<DesignSingleFilePicker> {
  final _fileNotifier = ValueNotifier<bool>(false);
  bool _isPicking = false;

  @override
  void dispose() {
    _fileNotifier.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    if (_isPicking) return;
    _isPicking = true;

    try {
      final result = await FilePicker.pickFiles(
        type:
            (widget.allowedExtensions != null &&
                widget.allowedExtensions!.isNotEmpty)
            ? FileType.custom
            : FileType.any,
        allowedExtensions: widget.allowedExtensions,
      );

      if (!mounted) return;
      if (result.isEmpty) return;

      final file = result.first;

      _fileNotifier.value = true;

      widget.onFilePicked?.call(file.xFile);
    } catch (e) {
      debugPrint('File pick error: $e');
    } finally {
      if (mounted) {
        _isPicking = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pickFile,
      borderRadius: widget.borderRadius ?? BorderRadius.zero,
      child: SizedBox(
        width: widget.width ?? 64,
        height: widget.height ?? 64,
        child: ClipRRect(
          borderRadius: widget.borderRadius ?? BorderRadius.zero,
          child: ValueListenableBuilder<bool>(
            valueListenable: _fileNotifier,
            builder: (context, hasFile, _) {
              if (hasFile) {
                return Container(
                  color: AppColor.neutral[700],
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.file_present_rounded,
                    size: 24,
                    color: AppColor.blackGrey,
                  ),
                );
              }

              // External widget
              if (widget.file != null) {
                return widget.file!;
              }

              // Default widget
              if (widget.defaultWidget != null) {
                return widget.defaultWidget!;
              }

              // Fallback UI
              return Container(
                decoration: BoxDecoration(
                  color: AppColor.neutral[700],
                  borderRadius: widget.borderRadius ?? BorderRadius.zero,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.upload_file_rounded,
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
