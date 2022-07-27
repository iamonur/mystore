import 'package:flutter/material.dart';
import 'package:mystore/utils/custom_theme.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData icon;
  final TextEditingController textEditingController;
  final bool isPassword;

  const CustomTextInput(
      {Key? key,
      required this.label,
      required this.placeholder,
      required this.icon,
      this.isPassword = false,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              label,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: 50,
            child: TextField(
              controller: textEditingController,
              obscureText: isPassword,
              enableSuggestions: !isPassword,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 22, end: 20),
                  child: Icon(
                    icon,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(
                  color: CustomTheme.grey,
                ),
                hintText: placeholder,
                fillColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
