import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:WinWin/core/utils/enums/validator_enum.dart';
import 'package:WinWin/core/utils/validators/email_valid.dart';
import 'package:WinWin/core/utils/validators/pass_valid.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.type,
    this.islabelexist = false,
    this.textalign = TextAlign.start,
    this.onPhoneChanged,
    this.labelText,
    this.minlines,
    this.isenable,
    this.prefficIcon,
    this.width,
    this.ontap,
  });

  final ValidatorType? type;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final bool islabelexist;
  final TextAlign textalign;
  final int? minlines;
  final bool? isenable;
  final Widget? prefficIcon;
  final double? width;
  final void Function()? ontap;

  final Function(PhoneNumber)? onPhoneChanged;

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  final GlobalKey<FormFieldState> _fieldKey = GlobalKey<FormFieldState>();
  final FocusNode _focusNode = FocusNode();
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  //* change shadow state
  List<BoxShadow> _buildShadow(bool isFocused, bool hasError) {
    if (!isFocused) return [];
    return hasError ? AppConsts.redshadow : AppConsts.secondshadow;
  }

  //* decoration
  InputDecoration _getInputDecoration() {
    return InputDecoration(
      enabled: widget.isenable ?? true,
      hintText: widget.hintText ?? '',
      hintStyle: AppTextStyles.bodyLarge.copyWith(
        color: AppColors.gray,
        fontWeight: FontWeight.w600,
      ),
      errorStyle: const TextStyle(fontSize: 0, height: 0),
      border: InputBorder.none,
      suffixIcon: widget.obscureText
          ? _buildVisibilityIcon()
          : widget.suffixIcon,
      prefixIcon: widget.prefficIcon,
    );
  }

  Widget _buildVisibilityIcon() {
    return InkWell(
      onTap: () => setState(() => _isVisible = !_isVisible),
      child: Icon(_isVisible ? Icons.visibility_off : Icons.visibility),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool hasError = _fieldKey.currentState?.hasError ?? false;
    final String? errorText = _fieldKey.currentState?.errorText;
    final bool isFocused = _focusNode.hasFocus;

    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.islabelexist) ...[
          Text(' ${widget.labelText}', style: AppTextStyles.labelMedium),
          const SizedBox(height: 10),
        ],

        InkWell(
          onTap: widget.ontap,
          child: AnimatedContainer(
            width: Responsive.ResponsiveWidth(
              context: context,
              width: widget.width,
            ),
            duration: AppConsts.duration,
            decoration: BoxDecoration(
              borderRadius: AppConsts.raduis_medium,
              boxShadow: _buildShadow(isFocused, hasError),
            ),
            child: widget.type == ValidatorType.phone
                ? _buildPhoneField()
                : _buildDefaultTextField(),
          ),
        ),

        if (hasError && errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: Text(
              errorText,
              style: AppTextStyles.labelMedium.copyWith(color: AppColors.red),
            ),
          ),
      ],
    );
  }

  Widget _buildPhoneField() {
    return PhoneFormField(
      key: _fieldKey,
      focusNode: _focusNode,
      initialValue: PhoneNumber.parse('+966'),
      countrySelectorNavigator: const CountrySelectorNavigator.bottomSheet(
        showDialCode: true,
      ),
      onChanged: (phone) {
        _fieldKey.currentState?.validate();
        setState(() {});
        widget.onPhoneChanged?.call(phone);
      },
      decoration: _getInputDecoration(),
      validator: PhoneValidator.validMobile(
        context,
        errorText: 'رقم الجوال غير صحيح',
      ),
    );
  }

  Widget _buildDefaultTextField() {
    return TextFormField(
      key: _fieldKey,
      focusNode: _focusNode,
      minLines: widget.minlines ?? 1,
      maxLines: 5,
      textAlign: widget.textalign,
      controller: widget.controller,
      obscureText: widget.obscureText && !_isVisible,
      cursorColor: AppColors.prim1,
      onChanged: (_) {
        _fieldKey.currentState?.validate();
        setState(() {});
      },
      validator: (value) {
        if (value == null || value.isEmpty) return 'هذا الحقل مطلوب';
        return switch (widget.type) {
          ValidatorType.email => EmailValidator.validate(value),
          ValidatorType.password => PasswordValidator.validate(value),
          _ => null,
        };
      },
      decoration: _getInputDecoration(),
    );
  }
}
