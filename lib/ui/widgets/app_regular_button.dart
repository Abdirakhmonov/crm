import 'package:crm_flutter/core/utils/app_assets.dart';
import 'package:crm_flutter/core/utils/app_colors.dart';
import 'package:crm_flutter/core/utils/app_text_styles.dart';
import 'package:crm_flutter/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppRegularButton extends StatelessWidget {
  final String buttonLabel;
  final void Function()? onTap;
  final double width;
  final bool shouldAddIcon;

  const AppRegularButton({
    super.key,
    required this.buttonLabel,
    required this.onTap,
    this.width = double.infinity,
    this.shouldAddIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
            onTap == null ? AppColors.grey : AppColors.blue),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      child: SizedBox(
        height: 50,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonLabel,
              style: AppTextStyles.nunitoSansW700.copyWith(
                fontSize: 16,
                color: AppColors.white,
              ),
            ),
            if (shouldAddIcon) const _ArrowForwardIcon(),
          ],
        ),
      ),
    );
  }
}

class _ArrowForwardIcon extends StatelessWidget {
  const _ArrowForwardIcon();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        7.sizedBoxW,
        SvgPicture.asset(AppAssets.arrowForward),
      ],
    );
  }
}
