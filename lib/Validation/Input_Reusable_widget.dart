import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextWidget_Reusable extends StatelessWidget {
  const TextWidget_Reusable({
    Key? key,
    required this.name,
    required this.hint,
    required this.icon,
    required this.passHide,
    this.passIcon,
    required this.textController,
    required this.errormsg,
    this.length,


  }) : super(key: key);

  final String name;
  final String hint;
  final Icon icon;
  final bool passHide;
  final IconButton? passIcon;
  final TextEditingController textController;
  final String errormsg;
  final bool? length;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: TextFormField(
        controller: textController,
          inputFormatters: [
          length==true? LengthLimitingTextInputFormatter(6):LengthLimitingTextInputFormatter(-1)
      ],
        maxLength: length==true?6:null,

        validator: (value){
          if(value== null || value.isEmpty || value == " "){
            return errormsg;
          }
          if(value.length < 6){
            return "Field Must Be More ?Than 6";
          }
        },
        decoration: InputDecoration(
            label: Text(name),
            hintText: hint,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(14)
            ),
            prefixIcon: icon,
            suffixIcon: passIcon
        ),
          obscureText: passHide,
        obscuringCharacter: '*',
      ),
    );
  }
}
