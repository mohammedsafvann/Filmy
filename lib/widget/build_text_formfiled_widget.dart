import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class BuildTexFormFieldWidget extends StatefulWidget {
  final String? Function(String?)? validation;
  final TextEditingController controller;
  final bool? obscure;
  final String hintText;
  final Widget? suffix;
  final Widget? prefix;
  final double? radius;
  const BuildTexFormFieldWidget(
      {super.key,
      this.validation,
      required this.controller,
      this.obscure,
      required this.hintText,
      this.suffix,
      this.radius,
      this.prefix});

  @override
  State<BuildTexFormFieldWidget> createState() =>
      _BuildTexFormFieldWidgetState();
}

class _BuildTexFormFieldWidgetState extends State<BuildTexFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Constants.kitGradients[1],
      validator: (value) => widget.validation!(value),
      controller: widget.controller,
      onTap: () {},
      style: TextStyle(
        decoration: TextDecoration.none,
        color: Constants.kitGradients[1],
      ),
      obscureText: widget.obscure ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        fillColor: Constants.kitGradients[1].withOpacity(0.05),
        filled: true,
        hintText: widget.hintText,
        prefixIcon: widget.prefix,
        hintStyle: TextStyle(
          decoration: TextDecoration.none,
          color: Constants.kitGradients[1].withOpacity(0.6),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 0),
          borderSide: BorderSide(
            color: Constants.kitGradients[5],
          ),
        ),
        //
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 0),
          borderSide: BorderSide(
            width: 1,
            color: Constants.kitGradients[1].withOpacity(0.05),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 0),
          borderSide: BorderSide(
            color: Constants.kitGradients[1].withOpacity(0.05),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 0),
          borderSide: BorderSide(
            color: Constants.kitGradients[1].withOpacity(0.05),
          ),
        ),
        suffixIcon: widget.suffix,
      ),
    );
  }
}
