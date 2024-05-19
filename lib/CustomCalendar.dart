import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _selectedDate = DateTime.now();

  List<DateTime> _getDaysInMonth(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);
    return List.generate(lastDay.difference(firstDay).inDays + 1, (index) => firstDay.add(Duration(days: index)));
  }

  double calculateOffset(List<DateTime> days, DateTime date) {
    final selectedIndex = days.indexOf(date);
    if (selectedIndex == -1) return 0.0;
    final itemWidth = 100.0;
    final scrollableWidth = MediaQuery.of(context).size.width;
    final offset = (selectedIndex * itemWidth) - (scrollableWidth / 2) + (itemWidth / 2);
    return offset.clamp(0.0, days.length * itemWidth - scrollableWidth);
  }

  @override
  Widget build(BuildContext context) {
    final days = _getDaysInMonth(_selectedDate);
    final monthName = DateFormat.yMMMM().format(_selectedDate); // Format month name (e.g., May 2024)
    DateTime today = DateTime.now();

    return Column(
      children: [
        Text(
          monthName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),

        SizedBox(height: 10),

        SizedBox(
          height: 65.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            controller: ScrollController(initialScrollOffset: calculateOffset(days, _selectedDate)),
            itemBuilder: (context, index) {
              final date = days[index];
              final isSelected = date.compareTo(_selectedDate) == 0;

              return GestureDetector(
                onTap: () {
                  setState(() => _selectedDate = date);
                  },
                child: Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blueAccent[100] : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(DateFormat('EEE').format(date),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      Text(
                        date.day.toString(),
                        style: TextStyle(
                            color: date.day == today.day ? Colors.red : Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 10),
      ],
    );
  }
}
