import 'package:curso01/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OrderField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final String hintText;

  const OrderField({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    const defaultBorder =
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Text(
              title,
              style: context.textStyles.textRegular.copyWith(
                overflow: TextOverflow.ellipsis,
                fontSize: 16,
              ),
            ),
          ),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            border: defaultBorder,
            enabledBorder: defaultBorder,
            focusedBorder: defaultBorder,
          ),
        ),
      ],
    );
  }
}
