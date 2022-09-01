import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/constants.dart';
import '../models/countries.dart';



class WisdomCircleCountryModal extends StatefulWidget {
  final void Function(Map param) onTap;
  const WisdomCircleCountryModal({Key? key, required this.onTap})
      : super(key: key);

  @override
  State<WisdomCircleCountryModal> createState() =>
      _WisdomCircleCountryModalState();
}

class _WisdomCircleCountryModalState extends State<WisdomCircleCountryModal> {
  String currentFlag = "🇮🇳";
  String currentDialCode = "+91";
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return IconButton(
        icon: Row(
          children: [
            Text(
              currentFlag,
              style: GoogleFonts.poppins(
                fontSize: Constants.body2, //20,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  currentDialCode,
                  style: GoogleFonts.poppins(
                    fontSize: Constants.body2,
                  ),
                ),
              ),
            ),
            Container(
              width: 1,
              color: Constants.charcoalColour,
              margin: const EdgeInsets.only(left: 5),
            ),
          ],
        ),
        iconSize: 65,
        constraints: const BoxConstraints(minHeight: 50, minWidth: 40),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ListView.builder(
                itemCount: CountriesList.countries.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () => {
                      setState(() {
                        currentFlag =
                            "${CountriesList.countries.elementAt(index)['flag']}";
                        currentDialCode =
                            "${CountriesList.countries.elementAt(index)['dial_code']}";
                        widget.onTap(CountriesList.countries.elementAt(index));
                        Navigator.pop(context);
                      }),
                    },
                    leading: Text(
                      CountriesList.countries
                          .elementAt(index)['flag']
                          .toString(),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    title: Text(
                      CountriesList.countries
                          .elementAt(index)['name']
                          .toString(),
                    ),
                  );
                },
              );
            },
          );
        },
      );
    });
  }
}
