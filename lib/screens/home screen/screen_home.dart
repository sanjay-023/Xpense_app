import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xpense_app/main.dart';
import 'package:xpense_app/screens/home%20screen/widgets/balance_card_widget.dart';
import 'package:xpense_app/screens/home%20screen/widgets/common_widget.dart';

String profName = '';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  void initState() {
    getProfileName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(26),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Welcome,$profName',
                  style: GoogleFonts.signika(
                      textStyle: const TextStyle(fontSize: 24)),
                ),
              ],
            ),
            commonSizedBox(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dateWidget('April', true),
                  dateWidget('May', false),
                  dateWidget('Jun', false),
                  dateWidget('Jul', false),
                  dateWidget('Aug', false)
                ],
              ),
            ),
            commonSizedBox(30),
            balanceCard()
          ],
        ),
      ),
    )));
  }

  getProfileName() async {
    final _sharedprfns = await SharedPreferences.getInstance();
    final profileName = _sharedprfns.getString(saveKey);
    profName = profileName!;
  }
}
