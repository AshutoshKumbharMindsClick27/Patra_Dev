import 'package:flutter/material.dart';

import '../config/constants.dart';

class MindCliksTextFormField extends StatelessWidget {
  final String? label;
  bool required = false;
  String type = "text";
  final TextEditingController? controller;

  MindCliksTextFormField(
      {Key? key,
      required this.label,
      this.required = false,
      this.type = "text",
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height * 0.03),
      width: width * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.85,
            child: TextFormField(
              cursorColor: Constants.neutralDivider,
              controller: controller,
              textInputAction: TextInputAction.next,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(14),
                label: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$label",
                      ),
                      TextSpan(
                        text: " *",
                        style: TextStyle(
                          color: Constants.errorColor,
                        ),
                      ),
                    ],
                  ),
                ),
                errorStyle: TextStyle(
                  color: Constants.errorColor,
                  fontWeight: Constants.regularFont,
                  fontSize: Constants.body3,
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      width: 1,
                      color: Constants.errorColor,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      width: 1,
                      color: Constants.neutralGrey,
                    )),
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      width: 1,
                      color: Constants.neutralDivider,
                    )),
              ),
              validator: (value) {
                if (type == "email") {
                  bool emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  ).hasMatch(value!);
                  if (emailValid) {
                    return null;
                  } else {
                    return "Enter Valid Email Address";
                  }
                } else if (required && value!.isEmpty) {
                  return "$label cannot be empty!";
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
