import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xpense_app/screens/add%20transaction/widget/date_pick.dart';
import 'package:xpense_app/screens/add%20transaction/widget/text_box.dart';
import 'package:xpense_app/screens/add%20transaction/widget/trans_type.dart';
import 'package:xpense_app/screens/home%20screen/widgets/common_widget.dart';
import 'package:xpense_app/screens/home%20screen/widgets/custom_icons.dart';

class ScreenAddTransaction extends StatefulWidget {
  ScreenAddTransaction({Key? key}) : super(key: key);

  @override
  State<ScreenAddTransaction> createState() => _ScreenAddTransactionState();
}

class _ScreenAddTransactionState extends State<ScreenAddTransaction> {
  final amountcontroller = TextEditingController();

  final categorycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    commonSizedBox(40),
                    Text(
                      'Add Transaction',
                      style: GoogleFonts.signika(
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                    ),
                    commonSizedBox(30),
                    commonTextBox(
                        ticon: MyFlutterApp.rupee,
                        htext: 'Enter Amount',
                        controller: amountcontroller,
                        ktype: TextInputType.number),
                    commonSizedBox(20),
                    commonTextBox(
                        ticon: MyFlutterApp.category,
                        htext: 'Category',
                        controller: categorycontroller,
                        ktype: TextInputType.text),
                    commonSizedBox(20),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TransType()),
                    commonSizedBox(20),
                    Datepick(),
                    commonSizedBox(20),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Add'),
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 139, 9, 204),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            minimumSize: const Size(150, 40)))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
