import 'package:flutter/material.dart';
import 'package:dailyexpenses/palette.dart';
import 'package:dailyexpenses/widgets/widget.dart';
import 'package:dailyexpenses/data.dart';
import 'package:dailyexpenses/models/model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffold,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'saldo',
              style: const TextStyle(
                color: Palette.abu,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            centerTitle: true,
            floating: true,
          ),
          SliverToBoxAdapter(
              child: BalanceContainer(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final DailyReport dailyReport = dailyReports[index];
                  return DateContainer(dailyReport: dailyReport);
                },
              childCount: dailyReports.length,
            ),
          ),
        ],
      ),
    );
  }
}
