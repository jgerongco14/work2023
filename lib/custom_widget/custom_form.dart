// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

//text
class CustomText extends StatelessWidget {
  CustomText({
    this.text,
    this.fontFamily,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    Key? key,
  }) : super(key: key);

  String? text;
  String? fontFamily;
  double? fontSize;
  Color? textColor;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        fontFamily: fontFamily ?? 'arial',
        fontSize: fontSize ?? 20,
        color: textColor ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

//textfield
class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.borderRadius,
    this.bottxt,
    this.fontWeight,
    this.fontStyle,
    this.txtColor,
    this.fontsize,
    Key? key,
  }) : super(key: key);

  double? borderRadius;
  Color? txtColor;
  String? bottxt;
  FontWeight? fontWeight;
  String? fontStyle;
  double? fontsize;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: bottxt ?? '',
        labelStyle: TextStyle(
          color: txtColor,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontsize ?? 12,
          fontFamily: fontStyle,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1),
        ),
        border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            borderSide: BorderSide(width: 1)),
      ),
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        fontFamily: fontStyle,
      ),
    );
  }
}

//button
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.elevatedbot,
    this.bgColor,
    this.borderRadius,
    this.bottxt,
    this.fontWeight,
    this.fontStyle,
    this.txtColor,
    Key? key,
  }) : super(key: key);

  VoidCallback elevatedbot;
  Color? bgColor;
  double? borderRadius;
  Color? txtColor;
  String? bottxt;
  FontWeight? fontWeight;
  String? fontStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
          ),
        ),
        onPressed: elevatedbot,
        child: Text(
          bottxt ?? '',
          style: TextStyle(
            color: txtColor,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: 20,
            fontFamily: fontStyle,
          ),
        ),
      ),
    );
  }
}

// //Radio Button
// enum Gender { male, female }
// class RadioButton extends StatelessWidget {
//   RadioButton(
//       {
//       required this.title,
//       required this.value,
//       required this.onChanged,
//       super.key});

//   String title;
//   Gender value;
//   Gender? _gender;
//   Function(Gender?)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: RadioListTile<Gender>(
//         title: Text(Gender.male.name),
//         value: Gender.male,
//         groupValue: _gender,
//         onChanged: onChanged,
//       ),
//     );
//   }
// }

//Switch Button

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;
  bool light2 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          value: light0,
          onChanged: (bool value) {
            setState(() {
              light0 = value;
            });
          },
        ),
      ],
    );
  }
}

