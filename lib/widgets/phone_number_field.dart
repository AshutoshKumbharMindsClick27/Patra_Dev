import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/constants.dart';
import 'country_modal.dart';

class MindsCliksPhoneField extends StatefulWidget {
  final TextEditingController controller;
  final bool? required;
  final Function onCountryCodeChange;
  const MindsCliksPhoneField(
      {Key? key,
      required this.controller,
      this.required = false,
      required this.onCountryCodeChange})
      : super(key: key);

  @override
  State<MindsCliksPhoneField> createState() => _MindsCliksPhoneFieldState();
}

class _MindsCliksPhoneFieldState extends State<MindsCliksPhoneField> {
  String currentFlag = "🇮🇳";
  String currentDialCode = "+91";
  String number = "";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height * 0.03),
      width: width * 0.85,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.85,
            child: TextFormField(
              style: GoogleFonts.poppins(
                fontStyle: FontStyle.normal,
                color: Constants.neutralBlack,
                fontWeight: Constants.regularFont,
                fontSize: Constants.body3,
              ),
              cursorColor: Constants.neutralDivider,
              controller: widget.controller,
              textInputAction: TextInputAction.next,
              textAlignVertical: TextAlignVertical.center,
              onChanged: (val) => {widget.onCountryCodeChange(currentDialCode)},
              decoration: InputDecoration(
                label: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Mobile",
                      ),
                      TextSpan(
                        text: " *",
                        style: GoogleFonts.poppins(
                          color: Constants.neutralBlack,
                          fontWeight: Constants.regularFont,
                          fontSize: Constants.body3,
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
                // contentPadding:
                prefixIconConstraints: const BoxConstraints(maxHeight: 45),
                prefixIcon: WisdomCircleCountryModal(
                  onTap: (val) {
                    currentDialCode = val['dial_code'];
                    widget.onCountryCodeChange(currentDialCode);
                  },
                ),
                // contentPadding:
                //     const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      width: 1,
                      color: Constants.neutralDivider,
                    )),
              ),
              validator: (value) {
                if (widget.required! && value!.isEmpty) {
                  return "Mobile Number cannot be empty!";
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
