import 'package:crm_flutter/core/utils/app_assets.dart';
import 'package:crm_flutter/core/utils/app_colors.dart';
import 'package:crm_flutter/core/utils/app_text_styles.dart';
import 'package:crm_flutter/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? labelText;
  final String? hintText;
  final bool isObscure;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String? initialValue;

  const AppTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.errorText,
    this.inputFormatters,
    this.isObscure = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.initialValue,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return widget.labelText != null && widget.labelText!.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.labelText ?? '',
                style: AppTextStyles.nunitoSansW600.copyWith(
                  color: AppColors.grayishBlue,
                ),
              ),
              7.sizedBoxH,
              _textFormField(),
            ],
          )
        : _textFormField();
  }

  Widget _textFormField() => TextFormField(
        controller: widget.controller,
        obscureText: _isObscure,
        initialValue: widget.initialValue,
        onChanged: widget.onChanged,
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          errorText: widget.errorText,
          suffixIcon: _passwordToggleObscure(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0F0),
              width: 1.3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFF3F8CFF),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0F0),
              width: 1.3,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0F0),
              width: 1.3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1.3,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1.3,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: AppTextStyles.nunitoSansW600.copyWith(
            color: const Color(0xFF7D8592),
          ),
        ),
      );

  Widget? _passwordToggleObscure() => widget.isObscure
      ? GestureDetector(
          onTap: () => setState(() => _isObscure = !_isObscure),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              _isObscure ? AppAssets.passwordEyeSlash : AppAssets.passwordEye,
            ),
          ),
        )
      : null;
}
