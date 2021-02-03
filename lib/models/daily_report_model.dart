import 'package:meta/meta.dart';
import 'model.dart';
import 'package:dailyexpenses/data.dart';

class DailyReport {
  final String tanggal;
  final String hari;
  final String bulan_dan_tahun;
  final String howMuch;
  final List category;

  const DailyReport({
    @required this.tanggal,
    @required this.hari,
    @required this.bulan_dan_tahun,
    @required this.howMuch,
    @required this.category,
  });
}