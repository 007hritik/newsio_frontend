import 'package:flutter/material.dart';
import 'package:newsio/components/testfiled_contatiner.dart';
import 'package:newsio/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  Function validator;
  final IconData icon;
  final ValueChanged<String> onChanged;
  RoundedInputField({
    this.validator,
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(validator);
    return TextFieldContainer(
        child: validator == null
            ? (TextField(
                onChanged: this.onChanged,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  icon: Icon(
                    this.icon,
                    color: kPrimaryColor,
                  ),
                  hintText: this.hintText,
                  border: InputBorder.none,
                ),
              ))
            : TextFormField(
                validator: this.validator,
                onChanged: this.onChanged,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    icon: Icon(this.icon, color: kPrimaryColor),
                    hintText: this.hintText,
                    border: InputBorder.none)));
  }
}
