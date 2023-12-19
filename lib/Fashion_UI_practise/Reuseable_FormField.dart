import 'package:flutter/material.dart';


class FormField1 extends StatelessWidget {
  const FormField1({
    Key? key,
    required this.label_name,
    required this.hint_text,
    required this.pre_icon,
    this.suff_icon

  }) : super(key: key);

  final String label_name;
  final String hint_text;
  final Icon  pre_icon;
  final Icon?  suff_icon;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        child:TextFormField(
          decoration: InputDecoration(
            label: Text(label_name),
            hintText: hint_text,
            prefixIcon: pre_icon,
            suffixIcon: suff_icon,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(14)
            ),
          ),
          obscureText: true,
          obscuringCharacter: '*',
        )
    );
  }
}
