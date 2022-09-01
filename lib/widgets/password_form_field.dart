// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../config/constants.dart';

class MindCliksPasswordField extends StatefulWidget {
  final String? label;
  bool required = false;
  final TextEditingController? controller;

  static bool isloginOtp = false;
  bool get isOtp => isloginOtp;
  set isloginVisOtp(bool loginOtp) {
    isloginOtp = loginOtp;
  }

  MindCliksPasswordField(
      {Key? key, required this.label, this.required = false, this.controller})
      : super(key: key);

  @override
  State<MindCliksPasswordField> createState() => _MindCliksPasswordFieldState();
}

class _MindCliksPasswordFieldState extends State<MindCliksPasswordField> {
  String type = "text";
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height * 0.03),
      width: width * 0.85,
      child: Column(
        children: [
          SizedBox(
            width: width * 0.85,
            child: TextFormField(
              cursorColor: Constants.neutralDivider,
              obscureText: _isObscure,
              controller: widget.controller,
              textInputAction: TextInputAction.next,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(14),
                label: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "${widget.label}",
                  ),
                  TextSpan(
                    text: " *",
                    style: TextStyle(
                      color: Constants.errorColor,
                    ),
                  ),
                ])),
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
                // contentPadding:
                //     const EdgeInsets.symmetric(vertical: 24, horizontal: 10),
                suffixIconConstraints: const BoxConstraints(maxHeight: 40),
                suffixIcon: IconButton(
                  splashRadius: 2.0,
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Constants.neutralCharcoal,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      width: 1,
                      color: Constants.neutralDivider,
                    )),
              ),
              validator: (value) {
                if (MindCliksPasswordField.isloginOtp) {
                  return null;
                }
                if (widget.required && value!.isEmpty) {
                  return "${widget.label} cannot be empty!";
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
