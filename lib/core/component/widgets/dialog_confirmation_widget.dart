import 'package:general_pos/core/extensions/build_context_ext.dart';
import 'package:general_pos/core/theme/app_padding.dart';
import 'package:flutter/material.dart';

class DialogConfirmationWidget extends StatelessWidget {
  const DialogConfirmationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      padding: AppPadding.large,
      child: Icon(
        Icons.question_mark_rounded,
        color: context.colorScheme.primary,
        size: 48,
      ),
    );
  }
}
