import 'package:flutter/material.dart';
import 'package:dailyexpenses/palette.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarContainer extends StatefulWidget {
  @override
  _CalendarContainerState createState() => _CalendarContainerState();
}

class _CalendarContainerState extends State<CalendarContainer> {
  CalendarController _controller;

  @override
  void initState(){
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                todayColor: Palette.ijo1,
                selectedColor: Palette.ijo,
                todayStyle: TextStyle(
                  fontSize: 18.0,
                  color: Palette.ijo,
                )
              ),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonVisible: false,
              ),
              calendarController: _controller,
            )
          ],
        ),
      ),
    );
  }
}
