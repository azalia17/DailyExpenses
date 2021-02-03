import 'package:flutter/material.dart';
import 'package:dailyexpenses/models/model.dart';
import 'package:dailyexpenses/palette.dart';
import 'package:dailyexpenses/widgets/widget.dart';
import 'package:dailyexpenses/data.dart';
import 'package:dailyexpenses/screens/screen.dart';

class DateContainer extends StatelessWidget {
  final DailyReport dailyReport;

  const DateContainer({
    Key key,
    @required  this.dailyReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _DailyReportHeader(dailyReport: dailyReport),
                ],
              ),
            ),
          ]
        ),
    );
  }
}

class _DailyReportHeader extends StatelessWidget {
  final DailyReport dailyReport;

  const _DailyReportHeader({
    Key key,
    @required  this.dailyReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              dailyReport.tanggal,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dailyReport.hari,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    dailyReport.bulan_dan_tahun,
                    style: const TextStyle(
                      color: Palette.abu,
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              dailyReport.howMuch,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        Container(
          height: 1.0,
          color: Palette.scaffold,
        ),
        Column(
          children: [
            DailyCategoryContainer(
                title: 'Makanan',
                note: 'Makan Ati',
                howMuch: '4000',
                image: 'assets/images/food.png'
            ),
            DailyCategoryContainer(
                title: 'Belanja',
                note: 'Beli Baju',
                howMuch: '2000',
                image: 'assets/images/shopping.png'
            ),
          ]
        )
      ]
    );
  }
}
