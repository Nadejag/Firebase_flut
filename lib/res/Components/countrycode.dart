import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';


class CountryCodeScreen extends StatefulWidget {
  const CountryCodeScreen({super.key});

  @override
  State<CountryCodeScreen> createState() => _CountryCodeScreenState();
}

class _CountryCodeScreenState extends State<CountryCodeScreen> {
  String? selectedDialCode = "+92"; // Default to Pakistan

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CountryCodePicker(
              onChanged: (code) {
                setState(() {
                  selectedDialCode = code.dialCode;
                });
              },
              initialSelection: 'PK',
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              showDropDownButton: true,
              showFlag: false,
              alignLeft: true,
              builder: (CountryCode? code) {
                return Expanded(
                  child: Text(
                    "${selectedDialCode ?? code?.dialCode ?? ''}",
                    style: const TextStyle(fontSize: 16),
                  ),
                );
              },
            ),
          ],
        ),
    );

  }


}