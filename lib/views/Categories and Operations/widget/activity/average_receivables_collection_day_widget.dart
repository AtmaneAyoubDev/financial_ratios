import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants.dart';
import '../image_widget.dart';

class AverageReceivableCollectionDay extends StatefulWidget {
  const AverageReceivableCollectionDay({Key? key}) : super(key: key);

  @override
  State<AverageReceivableCollectionDay> createState() =>
      _AverageReceivableCollectionDayState();
}

class _AverageReceivableCollectionDayState
    extends State<AverageReceivableCollectionDay> {
  double result = 0;
  TextEditingController receivableTurnover = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageWidget(name: "averageReceivableCollectionDay"),
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
                controller: receivableTurnover,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "Receivable turnover",
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
                  result = 365 / double.parse(receivableTurnover.text);
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
