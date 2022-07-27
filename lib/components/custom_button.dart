import 'package:flutter/material.dart';
import 'package:mystore/components/loader.dart';
import 'package:mystore/utils/custom_theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPress;
  final bool loading;

  const CustomButton(
      {Key? key,
      required this.text,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: CustomTheme.yellow,
        boxShadow: CustomTheme.buttonShadow,
      ),
      child: MaterialButton(
        onPressed: loading ? null : onPress,
        child: loading
            ? const Loader()
            : Text(
                text,
                style: Theme.of(context).textTheme.titleSmall,
              ),
      ),
    );
  }
}
