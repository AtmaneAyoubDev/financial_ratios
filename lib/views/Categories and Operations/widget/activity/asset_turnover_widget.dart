import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants.dart';
import '../image_widget.dart';

class AssetTurnoverWidget extends StatefulWidget {
  const AssetTurnoverWidget({Key? key}) : super(key: key);

  @override
  State<AssetTurnoverWidget> createState() => _AssetTurnoverWidgetState();
}

class _AssetTurnoverWidgetState extends State<AssetTurnoverWidget> {
  double result = 0;
  TextEditingController netSales = TextEditingController();
  TextEditingController averageTotalAssets = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageWidget(name: "assetTurnover"),
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
                controller: netSales,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "Net sales",
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
                controller: averageTotalAssets,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "Average net fixed assets",
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
                  result = double.parse(netSales.text) /
                      double.parse(averageTotalAssets.text);
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
