import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants.dart';
import '../image_widget.dart';

class PayablesTurnoversWidget extends StatefulWidget {
  const PayablesTurnoversWidget({Key? key}) : super(key: key);

  @override
  State<PayablesTurnoversWidget> createState() =>
      _PayablesTurnoversWidgetState();
}

class _PayablesTurnoversWidgetState extends State<PayablesTurnoversWidget> {
  double result = 0;
  TextEditingController cOGS = TextEditingController();
  TextEditingController changeInInventory = TextEditingController();
  TextEditingController averageAccountsPayable = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageWidget(name: "payableTurnover"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: kPrimaryColor,
                  )),
              child: TextField(
                controller: cOGS,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "Cost of goods sold (COGS)",
                  hintStyle:
                      GoogleFonts.tajawal(color: kPrimaryColor, fontSize: 20),
                ),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: kPrimaryColor,
                  )),
              child: TextField(
                controller: changeInInventory,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "change in inventory",
                  hintStyle:
                      GoogleFonts.tajawal(color: kPrimaryColor, fontSize: 20),
                ),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: kPrimaryColor,
                  )),
              child: TextField(
                controller: averageAccountsPayable,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "Average accounts payable",
                  hintStyle:
                      GoogleFonts.tajawal(color: kPrimaryColor, fontSize: 20),
                ),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(16)),
          child: TextButton(
              onPressed: (() {
                setState(() {
                  result = (double.parse(cOGS.text) +
                          double.parse(changeInInventory.text)) /
                      double.parse(averageAccountsPayable.text);
                });
              }),
              child: Text(
                "calculate",
                style: GoogleFonts.tajawal(color: Colors.white, fontSize: 25),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          result.toString(),
          style: GoogleFonts.tajawal(color: kPrimaryColor, fontSize: 25),
        ),
      ],
    );
  }
}
