import 'package:flutter/material.dart';

class HoursWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _DayOfWeekWidget(dayOfWeek: 'Понедельник', hours: '10:00-13:00'),
        _DayOfWeekWidget(dayOfWeek: 'Вторник', hours: '10:00-13:00'),
        _DayOfWeekWidget(dayOfWeek: 'Среда', hours: '10:00-13:00'),
        _DayOfWeekWidget(dayOfWeek: 'Четверг', hours: '10:00-13:00'),
        _DayOfWeekWidget(dayOfWeek: 'Пятница', hours: '10:00-13:00'),
        _DayOfWeekWidget(dayOfWeek: 'Суббота', hours: '10:00-13:00'),
        _DayOfWeekWidget(
          dayOfWeek: 'Воскресенье',
          hours: '10:00-13:00',
        ),
      ],
    );
  }
}

class _DayOfWeekWidget extends StatelessWidget {
  final String dayOfWeek;
  final String hours;

  const _DayOfWeekWidget(
      {Key? key, required this.dayOfWeek, required this.hours})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: SizedBox(
        width: 200,
        child: Row(
          children: [Text('$dayOfWeek'), Spacer(), Text('$hours')],
        ),
      ),
    );
  }
}
